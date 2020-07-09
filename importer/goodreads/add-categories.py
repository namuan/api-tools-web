import re
import subprocess
from pathlib import Path

import time


def run_command(command):
    return subprocess.check_output(command, stderr=subprocess.STDOUT, shell=True).decode('utf-8')


link_rgx = re.compile("Link\s=\s\"(.*)\"")


def process_file(file):
    text = file.read_text()
    link = link_rgx.findall(text)[0]
    cmd = "curl -s " + link + ' | pup \'div.stacked div.left a.actionLinkLite text{}\' | head -n 1'
    category = run_command(cmd)
    category = category.strip()
    print("Running {}".format(cmd))
    print("Category Found for {} is {}".format(link, category))
    cmd = 'sed -i.bak \'s/categories = \[""\]/categories = \["' + category + '"\]/g\' ' + file.as_posix()
    print("Running {}".format(cmd))
    run_command(cmd)
    time.sleep(5)


def main():
    p = Path("/Users/nmn/workspace/mindbooks-club/content/books")
    for f in p.iterdir():
        process_file(f)


if __name__ == "__main__":
    main()
