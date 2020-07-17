#!/usr/bin/env bash

export PYTHONPATH=`pwd`:$PYTHONPATH

./venv/bin/python3 importer/web_screenshot_saver.py -t screenshots
