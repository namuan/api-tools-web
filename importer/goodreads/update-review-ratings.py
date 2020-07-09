import os
import re
import subprocess
from pathlib import Path


def run_command(command):
    return subprocess.check_output(command, stderr=subprocess.STDOUT, shell=True).decode('utf-8')


pages_rgx = re.compile("pages = \"(.*)\"")
ratings_rgx = re.compile("ratings = \"(.*)\"")
total_ratings_rgx = re.compile("totalRatings = \"(.*)\"")
reviews_rgx = re.compile("reviews = \"(.*)\"")
link_rgx = re.compile("Link\s=\s\"(.*)\"")

html_rating_rgx = re.compile("span.itemprop=\"ratingValue\">\s+([\d\.]+)")
html_rating_count_rgx = re.compile('itemprop="ratingCount"\scontent="(\d+)"')
html_review_rgx = re.compile('itemprop="reviewCount"\scontent="(\d+)"')


def process_file(file):
    text = file.read_text()
    link = link_rgx.findall(text)[0]

    book_name = os.path.basename(link)
    book_html = Path.cwd().joinpath("goodread_html_temp").joinpath(book_name).read_text()
    stripped_html = book_html.replace('\n', '').replace('\t', '')
    html_rating_value = html_rating_rgx.findall(stripped_html)[0]
    html_rating_count = html_rating_count_rgx.findall(stripped_html)[0]
    html_review = html_review_rgx.findall(stripped_html)[0]
    print("{} - Rating: {}, Rating Count: {}, Review: {}".format(
        book_name,
        html_rating_value,
        html_rating_count,
        html_review
    ))

    updated_text = ratings_rgx.sub("ratings = \"{}\"".format(html_rating_value), text)
    updated_text = total_ratings_rgx.sub("totalRatings = \"{}\"".format(html_rating_count), updated_text)
    updated_text = reviews_rgx.sub("reviews = \"{}\"".format(html_review), updated_text)
    file.write_text(updated_text)


def main():
    p = Path("/Users/nmn/workspace/mindbooks-club/content/books")
    for f in p.iterdir():
        try:
            process_file(f)
        except Exception as e:
            print("Error processing {}".format(f.as_posix()))
            print(e)


if __name__ == "__main__":
    main()
