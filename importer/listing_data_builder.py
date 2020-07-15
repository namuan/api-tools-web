#!/usr/bin/env python

import argparse
import io
import os
import re

import sys

from importer.data_store import data_store

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


def create_tool_item(extracted_tool, category, tags):
    if not extracted_tool:
        return

    name, website, short_description = extracted_tool

    return dict(
        name=name,
        short_description=short_description,
        website=website,
        category=category,
        tags=tags.split(" "),
        screen_shot="",
        long_description=""
    )


compiled_rgx = re.compile(r'.*\[(\w+)\]\((.*)\)\s.\s(.*)$',
                          re.IGNORECASE)  # Pass flags like re.IGNORECASE to amend matching process


def extract_data(md_line):
    match = compiled_rgx.search(md_line)
    return match.groups() if match else tuple()


def read_instream(list_of_tools, category, tags):
    return [create_tool_item(extract_data(tool), category, tags) for tool in list_of_tools if tool.strip()]


def upsert(api_resource):
    try:
        table = data_store.table_for("api_resources")
        table.upsert(
            api_resource,
            ['name'],
        )
    except:
        print("Error saving: {}".format(api_resource))


def process_data(api_resources):
    for api_resource in api_resources:
        upsert(api_resource)


def main():
    args = parse_args()
    # Category will be provided as argument
    #  Tags will be provided as argument
    # List of tools will be provided as input file
    # Parse each line and construct a ToolItem
    # Persist each tool item in database table with the category and tags
    list_of_tools = read_instream(args.infile, args.category, args.tags)
    process_data(list_of_tools)


if __name__ == "__main__":
    main()
