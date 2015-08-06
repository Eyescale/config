
# Copyright (c) 2015 Stefan.Eilemann@epfl.ch

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(Eyescale)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/CMake
  ${CMAKE_SOURCE_DIR}/CMake/common)

set(GIT_EXTERNAL_TAG master) # always stay up to date
include(GitExternal)

set(VERSION_MAJOR "2015")
set(VERSION_MINOR "6")
set(VERSION_PATCH "0")
set(VERSION_ABI 1)

include(Common)

set(GITTARGETS_RELEASE_BRANCH minor)
set(COMMON_PROJECT_DOMAIN com.eyescale)
set(EYESCALE_DESCRIPTION "Eyescale Software Projects")
