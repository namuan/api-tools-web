#!/usr/bin/env python
"""
- python get img src

- python get isbn number

- python output curl command
"""

import argparse
import io
from slugify import slugify
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


from bs4 import BeautifulSoup


def manipulate_data(html_doc):
    soup = BeautifulSoup(html_doc, 'html.parser')
    image_url = soup.img['src']
    book_title = soup.img['alt']
    slugged_book_title = slugify(book_title)
    isbn = soup.span
    if isbn:
        isbn = isbn.string.strip()
    else:
        isbn = slugged_book_title
    download_url = "curl {} -o ../../static/images/{}-M.jpg".format(image_url, isbn)
    return download_url


def main():
    args = parse_args()
    result = manipulate_data(args.infile)
    args.outfile.write(result)


if __name__ == "__main__":
    main()
