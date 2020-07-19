#!/usr/bin/env bash

export PYTHONPATH=`pwd`:$PYTHONPATH

rm -rf content/tools

./venv/bin/python3 importer/tools_md_generator.py -t content/tools
