# Copyright 2011 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Include python install macros
########################################################################
include(GrPython)
if(NOT PYTHONINTERP_FOUND)
    return()
endif()

########################################################################
# Install python sources
########################################################################
GR_PYTHON_INSTALL(
    FILES
    __init__.py
    fftsink2.py
    fftsink_nongl.py
    fftsink_gl.py
    fft_window.py
    waterfall_window.py
    waterfallsink2.py
    waterfallsink_gl.py
    waterfallsink_nongl.py DESTINATION ${GR_PYTHON_DIR}/wow
)

GR_PYTHON_INSTALL(
    FILES
    plotter/__init__.py
    plotter/bar_plotter.py
    plotter/channel_plotter.py
    plotter/common.py
    plotter/gltext.py
    plotter/grid_plotter_base.py
    plotter/plotter_base.py
    plotter/waterfall_plotter.py
    DESTINATION ${GR_PYTHON_DIR}/wow/plotter
)

########################################################################
# Handle the unit tests
########################################################################
include(GrTest)

set(GR_TEST_TARGET_DEPS gnuradio-wow)
set(GR_TEST_PYTHON_DIRS ${CMAKE_BINARY_DIR}/swig)
