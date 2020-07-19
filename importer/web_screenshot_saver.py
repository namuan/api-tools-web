#!/usr/bin/env python

import argparse
import asyncio
import os
from pathlib import Path

import time
from pyppeteer import launch
from slug import slug

from importer.data_store import data_store, API_RESOURCES_TABLE_NAME

ENCODE_IN = "utf-8"
ENCODE_OUT = "utf-8"
TEMPLATE_DIR = os.path.dirname(os.path.abspath(__file__))


def parse_args():
    """Parse command line arguments."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "-t",
        "--targetdir",
        type=str,
        required=True
    )
    return parser.parse_args()


async def open_site(browser, website_url, screenshot_dir):
    page = await browser.newPage()
    await page._client.send('Page.setDownloadBehavior', {'behavior': 'allow', 'downloadPath': screenshot_dir})
    await page.goto(website_url)
    return browser, page


def is_github_page(website_url):
    return "github" in website_url


github_signup_dismissed = False


async def dismiss_signup(page):
    global github_signup_dismissed
    selector = "signup-prompt > div > div > button"
    dismiss_button = await page.querySelector(selector)
    await dismiss_button.click()
    github_signup_dismissed = True


async def main():
    args = parse_args()
    target_dir = args.targetdir
    screenshots_dir = Path(target_dir)
    screenshots_dir.mkdir(exist_ok=True)
    browser = await launch(headless=False, defaultViewport=None)
    table = data_store.table_for(API_RESOURCES_TABLE_NAME)
    for entry in table.find():
        website_url = entry["website"]
        tool_name = "{}-{}.png".format(entry["category"], slug(entry["name"]))
        screen_shot_path = screenshots_dir.joinpath(tool_name)

        if screen_shot_path.exists():
            print("Skipping {} as it already exists".format(website_url))
        else:
            print("Processing {}".format(website_url))
            try:
                browser, page = await open_site(browser, website_url, screenshots_dir.as_posix())
                if not github_signup_dismissed and is_github_page(website_url):
                    await dismiss_signup(page)
                await page.screenshot({'path': screen_shot_path.as_posix()})
                await page.close()
                time.sleep(3)
            except Exception as e:
                print("Error processing: {} - {}".format(website_url, str(e)))

        entry["screen_shot"] = screen_shot_path.as_posix()
        table.upsert(
            entry,
            ['name'],
        )


if __name__ == "__main__":
    asyncio.get_event_loop().run_until_complete(main())
