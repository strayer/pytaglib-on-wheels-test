#!/usr/bin/env bash
set -euo pipefail

#apt-get update
#apt-get install -y libtag1-dev

#pip install Cython
#PYTAGLIB_CYTHONIZE=1 pip install pytaglib
pip install -U pip wheel
pip install pytaglib
title=`python -c "import taglib; print(taglib.File('test.mp3').tags['TITLE'][0])"`

test "${title}" == "Hooray!"
