#!/usr/bin/env bash

export PYTHONPATH=`pwd`:$PYTHONPATH

# rm -rf screenshots

./venv/bin/python3 importer/web_screenshot_saver.py -t min-screenshots
