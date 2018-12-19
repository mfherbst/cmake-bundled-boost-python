# CMake Bundled boost python

Easily integrate boost-python as a bundled repository
to be build alongside other projects from CMake.

The files of this repository are not my own work and
originate from two open-source projects dealing with
the interfacing of C++ and python, namely
[boost](https://www.boost.org).
and [pybind11](https://github.com/pybind/pybind11).

Consequently I claim no ownership of these files
and merely distribute them via this repository.
The respective licensing terms of the two projects
can be found in the `boost` and `pybind11` subdirectories.

## Example for usage of this repository
```cmake
# Setup boost-python object and python dependency
set(Python_ADDITIONAL_VERSIONS 3)
set(BUNDLED_BOOST_DIR path_to_this_dir)
add_subdirectory(${BUNDLED_BOOST_DIR})
set(Boost_LIBRARIES obj_boost_python)

# Setup includes
include_directories(SYSTEM "${PYTHON_INCLUDE_DIRS}")
include_directories(BEFORE SYSTEM "${BUNDLED_BOOST_DIR}/boost/include")

# Add the library to have the python interface
add_library(mylib SHARED mylib.cc)
target_link_libraries(mylib "${PYTHON_LIBRARIES}" "${Boost_LIBRARIES}")
set_target_properties(mylib
	PROPERTIES PREFIX "lib${PYTHON_MODULE_PREFIX}"
	SUFFIX "${PYTHON_MODULE_EXTENSION}"
)
```
