#!/usr/bin/env python

import argparse
import io
import os
import re

import sys

from importer.data_store import data_store, API_RESOURCES_TABLE_NAME

ENCODE_IN = "utf-8"
ENCODE_OUT = "utf-8"
TEMPLATE_DIR = os.path.dirname(os.path.abspath(__file__))


def parse_args():
    """Parse command line arguments."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "-i",
        "--infile",
        type=lambda x: open(x, encoding=ENCODE_IN),
        default=io.TextIOWrapper(sys.stdin.buffer, encoding=ENCODE_IN),
    )
    parser.add_argument(
        "-c",
        "--category",
        type=str,
        required=True
    )
    parser.add_argument(
        "-t",
        "--tags",
        nargs='?'
    )
    return parser.parse_args()


def is_opensource(website):
    return "github" in website


def create_tool_item(extracted_tool, category, tags):
    if not extracted_tool:
        return

    name, website, short_description = extracted_tool

    return dict(
        name=name,
        short_description=short_description,
        website=website,
        category=category,
        tags=tags if tags else "",
        screen_shot="",
        long_description="",
        is_opensource=is_opensource(website)
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
        table = data_store.table_for(API_RESOURCES_TABLE_NAME)
        table.upsert(
            api_resource,
            ['name'],
        )
    except Exception as e:
        print("Error saving: {}".format(str(e)))


def process_data(api_resources):
    for api_resource in api_resources:
        upsert(api_resource)


def main():
    args = parse_args()
    list_of_tools = read_instream(args.infile, args.category, args.tags)
    process_data(list_of_tools)


if __name__ == "__main__":
    main()
