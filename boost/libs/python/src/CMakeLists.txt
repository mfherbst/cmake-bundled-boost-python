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

set(BOOST_PYTHON_SOURCE
	object_operators.cpp
	exec.cpp
	slice.cpp
	numpy/scalars.cpp
	numpy/dtype.cpp
	numpy/ufunc.cpp
	numpy/ndarray.cpp
	numpy/matrix.cpp
	numpy/numpy.cpp
	list.cpp
	converter/type_id.cpp
	converter/registry.cpp
	converter/builtin_converters.cpp
	converter/from_python.cpp
	converter/arg_to_python_base.cpp
	errors.cpp
	str.cpp
	dict.cpp
	wrapper.cpp
	object_protocol.cpp
	tuple.cpp
	import.cpp
	module.cpp
	object/life_support.cpp
	object/function_doc_signature.cpp
	object/function.cpp
	object/inheritance.cpp
	object/pickle_support.cpp
	object/enum.cpp
	object/class.cpp
	object/iterator.cpp
	object/stl_iterator.cpp
	long.cpp
)

add_library(obj_boost_python OBJECT ${BOOST_PYTHON_SOURCE})
set_target_properties(obj_boost_python PROPERTIES POSITION_INDEPENDENT_CODE ON)
