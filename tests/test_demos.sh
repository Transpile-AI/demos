#!/bin/bash

cd demos

mkdir .ivy
touch .ivy/key.pem
echo -n "$1"> .ivy/key.pem

# install dependencies
python3 -m pip install -r requirements.txt

# run test
python3 tests/notebook_testing.py