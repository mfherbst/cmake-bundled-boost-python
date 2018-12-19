#!/bin/sh
VERSION="2.2"
rm FindPythonLibsNew.cmake
wget https://raw.githubusercontent.com/pybind/pybind11/v2.2/tools/FindPythonLibsNew.cmake
echo $VERSION > version
