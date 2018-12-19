## ---------------------------------------------------------------------
##
## Copyright (C) 2018 by the adcc authors
##
## This file is part of adcc.
##
## adcc is free software: you can redistribute it and/or modify
## it under the terms of the GNU Lesser General Public License as published
## by the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## adcc is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with adcc. If not, see <http://www.gnu.org/licenses/>.
##
## ---------------------------------------------------------------------

message(STATUS "Configuring bundled boost-python")

# Allow to use PythonLibsNew from pybind11
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/pybind11")

# Find python headers
find_package(PythonInterp   REQUIRED)
find_package(PythonLibsNew  REQUIRED)

# Set explict flags for compiling boost
set(CMAKE_CXX_FLAGS_OLD ${CMAKE_CXX_FLAGS})
set(CMAKE_CXX_FLAGS "-Wall -Wextra -Werror -Wno-missing-field-initializers -Wno-unused-parameter")

include_directories(SYSTEM "${PYTHON_INCLUDE_DIRS}")
include_directories(BEFORE SYSTEM boost/include)

# Sets up object target obj_boost_python
add_subdirectory(boost/libs/python/src)

set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS_OLD})
