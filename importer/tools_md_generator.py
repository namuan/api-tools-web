#!/usr/bin/env python

import argparse
import os
from pathlib import Path

from jinja2 import Environment, FileSystemLoader
from slug import slug

from importer.data_store import data_store

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


def create_context_for_template(entry):
    entry["tags"] = entry["tags"].split(" ")
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
    for entry in data_store.tools_database_entries():
        context = create_context_for_template(entry)
        output = generate_final_markdown(context)
        target_file_path = build_target_file_path(entry, tools_content_dir)
        save_output(target_file_path, output)


if __name__ == "__main__":
    main()
