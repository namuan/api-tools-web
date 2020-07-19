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

import json
import os
import time
from collections import namedtuple
from pathlib import Path

import argparse
from jinja2 import Environment, FileSystemLoader
from markdownify import markdownify as md
from slug import slug

from importer.data_store import API_RESOURCES_TABLE_NAME, data_store

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


def read_instream(in_stream):
    return json.load(in_stream)


def get_data_from_gr(book_id):
    client = gr.Client(developer_key="LF7xVU9e68wiStXMC0xv9Q")
    book_response = client.Book.show(book_id)
    return book_response


def get_isbn(book_response):
    return book_response.get('isbn13')


def cache_thumbnail_url(full_isbn):
    return "/images/{}-M.jpg".format(full_isbn)


BookItem = namedtuple(
    "BookItem",
    "id published_date title description gr_link amz_us amz_uk amz_ca isbn full_isbn thumbnail pages ratings total_ratings reviews")


def create_book_item(r, thumbnail_url):
    return BookItem(
        id=r.get("id"),
        published_date="{}-{}-{}".format(r.get("publication_year"), r.get("publication_month"),
                                         r.get("publication_day")),
        title=r.get("title"),
        description=md(r.get("description")),
        gr_link=r.get("url"),
        amz_us="",
        amz_uk="",
        amz_ca="",
        isbn=r.get("isbn"),
        full_isbn=r.get("isbn13"),
        thumbnail=thumbnail_url,
        pages=r.get("num_pages"),
        ratings=r.get("average_rating"),
        total_ratings=r.get("ratings_count"),
        reviews=r.get("text_reviews_count")
    )


jinja_env = Environment(loader=FileSystemLoader(TEMPLATE_DIR), trim_blocks=True)


def transform_book_items(book_item):
    print("Created BookItem: {}".format(book_item))
    rendered = jinja_env.get_template("md_tool_template.j2").render(book_item._asdict())
    return "{}.md".format(slug(book_item.title)), rendered


def write_to_file(file_name, file_contents):
    Path.cwd().parent.parent.joinpath("exampleSite", "content", file_name).write_text(file_contents)


def make_book_item(book_id):
    time.sleep(2)
    gr_book = get_data_from_gr(book_id)
    full_isbn = get_isbn(gr_book)
    image_thumbnail = cache_thumbnail_url(full_isbn)

    book_item = create_book_item(gr_book, image_thumbnail)
    file_slug, compiled_md = transform_book_items(book_item)
    write_to_file(file_slug, compiled_md)


def manipulate_data(book_ids):
    return [make_book_item(id) for id in book_ids if id]


def tools_database_entries():
    table = data_store.table_for(API_RESOURCES_TABLE_NAME)
    return table.find()


def create_context_for_template(entry):
    return entry


def generate_final_markdown(context):
    return jinja_env.get_template("md_tool_template.j2").render(context)


def build_target_file_path(entry, tools_content_dir):
    tool_name = "{}-{}".format(entry["category"], slug(entry["name"]))
    return tools_content_dir.join(tool_name)


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
