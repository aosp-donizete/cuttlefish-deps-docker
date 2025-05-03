#!/bin/bash

git clone https://github.com/google/android-cuttlefish -b stable
cd android-cuttlefish
tools/buildutils/build_packages.sh