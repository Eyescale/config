set(DISPLAYCLUSTER_PACKAGE_VERSION 0.4)
set(DISPLAYCLUSTER_REPO_URL https://github.com/BlueBrain/DisplayCluster.git)

set(DISPLAYCLUSTER_DEPENDS
  REQUIRED Boost Deflect FCGI FFMPEG MPI OpenGL Qt5Concurrent Qt5Core
           Qt5Declarative Qt5Network Qt5OpenGL Qt5Svg Qt5WebKitWidgets
           Qt5Widgets Qt5Xml Qt5XmlPatterns
  OPTIONAL bluebrain Poppler TUIO OpenMP)
set(DISPLAYCLUSTER_BOOST_COMPONENTS "program_options date_time serialization unit_test_framework regex system thread")
set(DISPLAYCLUSTER_POPPLER_COMPONENTS "Qt5")
set(DISPLAYCLUSTER_DEB_DEPENDS libavutil-dev libavformat-dev libavcodec-dev
  libopenmpi-dev openmpi-bin libswscale-dev libxmu-dev libpoppler-qt5-dev
  libboost-date-time-dev libboost-serialization-dev libboost-test-dev
  libboost-program-options-dev libboost-regex-dev libboost-system-dev
  libboost-thread-dev libfcgi-dev)
set(DISPLAYCLUSTER_PORT_DEPENDS ffmpeg boost poppler fcgi)
#set(DISPLAYCLUSTER_SUBPROJECT ON)

find_package(MPI)
if(MPI_FOUND)
  if(NOT MPI_C_COMPILER)
    set(MPI_C_COMPILER mpicc)
  endif()
  if(NOT MPI_CXX_COMPILER)
    set(MPI_CXX_COMPILER mpicxx)
  endif()
  set(DISPLAYCLUSTER_EXTRA
    CMAKE_COMMAND CC=${MPI_C_COMPILER} CXX=${MPI_CXX_COMPILER} MPI_INCLUDES=${MPI_INCLUDES} cmake)
endif()
