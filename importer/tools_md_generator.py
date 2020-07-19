#!/usr/bin/env python
"""
Now that we have the book ids
Load book_ids from json
call goodreaders api with the book id
get the json response
create slug using the title (prefixed by book id)
get full isbn
add opencoverlibrary url in the thumbnail source
build bookitem object
pass object to jinja2 template to produce output
write output to md file
Test
"""

import os
from pathlib import Path

import argparse
from jinja2 import Environment, FileSystemLoader
from slug import slug

from importer.data_store import API_RESOURCES_TABLE_NAME, data_store

ENCODE_IN = "utf-8"
ENCODE_OUT = "utf-8"
TEMPLATE_DIR = os.path.dirname(os.path.abspath(__file__))

jinja_env = Environment(loader=FileSystemLoader(TEMPLATE_DIR), trim_blocks=True)


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


def tools_database_entries():
    table = data_store.table_for(API_RESOURCES_TABLE_NAME)
    return table.find()


def create_context_for_template(entry):
    print(entry)
    return entry


def generate_final_markdown(context):
    return jinja_env.get_template("md_tool_template.j2").render(context)


def build_target_file_path(entry, tools_content_dir):
    tool_name = "{}-{}.md".format(entry["category"], slug(entry["name"]))
    return tools_content_dir.joinpath(tool_name)


def save_output(target_file_path, output):
    target_file_path.write_text(output)


def main():
    args = parse_args()
    tools_content_dir = Path(args.targetdir)
    tools_content_dir.mkdir(exist_ok=True)
    for entry in tools_database_entries():
        context = create_context_for_template(entry)
        output = generate_final_markdown(context)
        target_file_path = build_target_file_path(entry, tools_content_dir)
        save_output(target_file_path, output)


if __name__ == "__main__":
    main()
