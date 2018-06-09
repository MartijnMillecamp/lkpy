#!/bin/sh

set -e
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p "$HOME/miniconda"
export PATH="$HOME/miniconda/bin:$PATH"
conda config --set always_yes yes --set changeps1 no
conda update -q conda
conda create -q -n lkpy-test python="$TRAVIS_PYTHON_VERSION" pandas dask pytest coverage