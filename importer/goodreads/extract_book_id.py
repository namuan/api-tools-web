#!/usr/bin/env python
"""
Extract GoodReads Book_id using Scraper
"""

import argparse
import io
import json

import requests
import sys

ENCODE_IN = "utf-8"
ENCODE_OUT = "utf-8"


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
        "-o",
        "--outfile",
        type=lambda x: open(x, "w", encoding=ENCODE_OUT),
        default=io.TextIOWrapper(sys.stdout.buffer, encoding=ENCODE_OUT),
    )
    return parser.parse_args()


def read_instream(in_stream):
    return in_stream.readlines()


def scrape_page(gr_url):
    print("Processing {}".format(gr_url))

    HEADERS = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7; rv:11.0) Gecko/20100101 Firefox/11.0',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
        'Accept-Encoding': 'gzip,deflate,sdch'
    }

    r = requests.get(gr_url, headers=HEADERS)
    assert r.status_code == 200
    return r.content.decode(ENCODE_IN)


import re


def find_book_id_in_html(html_string):
    book_id_match = re.findall(r"id\=\"book_id\"\svalue=\"(.*)\"", html_string)
    if book_id_match:
        return book_id_match[0]
    else:
        return None


import time


def extract_book_id(gr_url):
    try:
        scraped_html = scrape_page(gr_url)
        book_id = find_book_id_in_html(scraped_html)
        time.sleep(1)
    except:
        print("Failed to process")
        return None
    return book_id


def manipulate_data(file_lines):
    return [extract_book_id(url.strip()) for url in file_lines]


def main():
    args = parse_args()
    file_lines = read_instream(args.infile)
    results = manipulate_data(file_lines)
    args.outfile.write(json.dumps(results))


if __name__ == "__main__":
    main()
