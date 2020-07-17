#!/usr/bin/env python

import argparse
import os
import re
from pathlib import Path

from importer.data_store import data_store

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


def create_tool_item(extracted_tool, category, tags):
    if not extracted_tool:
        return

    name, website, short_description = extracted_tool

    return dict(
        name=name,
        short_description=short_description,
        website=website,
        category=category,
        tags=tags,
        screen_shot="",
        long_description=""
    )


compiled_rgx = re.compile(r'.*\[([\w\s\-\.]+)\]\((.*)\)[\s]?[\W]?(.*)$',
                          re.IGNORECASE)  # Pass flags like re.IGNORECASE to amend matching process


def extract_data(md_line):
    match = compiled_rgx.search(md_line)
    if not match:
        raise SyntaxError("Unable to match regex with line: {}".format(md_line))

    return match.groups() if match else tuple()


def read_instream(list_of_tools, category, tags):
    return [create_tool_item(extract_data(tool), category, tags) for tool in list_of_tools if tool.strip()]


def upsert(api_resource):
    if not api_resource:
        return

    try:
        table = data_store.table_for("api_resources")
        table.upsert(
            api_resource,
            ['name'],
        )
    except Exception as e:
        print("Error saving: {}".format(str(e)))


def capture_screenshot(api_resource, screenshots_dir):
    print("Processing {}".format(api_resource["website"]))
    return "Screenshot here"


def main():
    args = parse_args()
    target_dir = args.targetdir
    screenshots_dir = Path(target_dir)
    screenshots_dir.mkdir(exist_ok=True)

    table = data_store.table_for("api_resources")
    for entry in table.find():
        screen_shot_filename = capture_screenshot(entry, screenshots_dir)
        entry["screen_shot"] = screen_shot_filename
        table.upsert(
            entry,
            ['name'],
        )
    # open database
    # start browser
    # select all entries in table
    # for each entry
    # capture screenshot
    # save in target directory
    # list_of_tools = read_instream(args.infile, args.category, args.tags)
    # process_data(list_of_tools)


if __name__ == "__main__":
    main()
