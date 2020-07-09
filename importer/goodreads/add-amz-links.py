import re
import subprocess
from pathlib import Path

from isbn import convert


def run_command(command):
    return subprocess.check_output(command, stderr=subprocess.STDOUT, shell=True).decode('utf-8')


rgx = re.compile("isbn\s=\s\"(.*)\"")


def process_file(file):
    text = file.read_text()
    isbn = rgx.findall(text)[0]
    converted_isbn = convert(isbn)
    print("{} -> {}".format(isbn, converted_isbn))
    us = "https:\/\/www.amazon.com\/dp\/{}".format(converted_isbn)
    uk = "https:\/\/www.amazon.co.uk\/dp\/{}".format(converted_isbn)
    ca = "https:\/\/www.amazon.ca\/dp\/{}".format(converted_isbn)
    # category = run_command(cmd)
    # category = category.strip()
    # print("Running {}".format(cmd))
    # print("Category Found for {} is {}".format(link, category))
    cmd = 'sed -i.bak \'s/amzUS = ""/amzUS = "' + us + '"/g\' ' + file.as_posix()
    print("Running {}".format(cmd))
    run_command(cmd)
    cmd = 'sed -i.bak \'s/amzUK = ""/amzUK = "' + uk + '"/g\' ' + file.as_posix()
    print("Running {}".format(cmd))
    run_command(cmd)
    cmd = 'sed -i.bak \'s/amzCA = ""/amzCA = "' + ca + '"/g\' ' + file.as_posix()
    print("Running {}".format(cmd))
    run_command(cmd)
    # time.sleep(5)


def main():
    p = Path("/Users/nmn/workspace/mindbooks-club/content/books")
    for f in p.iterdir():
        try:
            process_file(f)
        except:
            print("Error processing {}".format(f.as_posix()))


if __name__ == "__main__":
    main()
