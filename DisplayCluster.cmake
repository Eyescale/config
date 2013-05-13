
set(DISPLAYCLUSTER_PACKAGE_VERSION 0.2.0)
set(DISPLAYCLUSTER_DEPENDS REQUIRED Boost LibJpegTurbo FFMPEG MPI OpenGL Qt4)
set(DISPLAYCLUSTER_BOOST_COMPONENTS "date_time serialization")
set(DISPLAYCLUSTER_QT4_COMPONENTS "QtNetwork QtOpenGL QtXml QtXmlPatterns")
set(DISPLAYCLUSTER_REPO_URL https://github.com/TACC/DisplayCluster.git)
set(DISPLAYCLUSTER_CMAKE_ARGS -DBUILD_DISPLAYCLUSTER=ON -DBUILD_DISPLAYCLUSTER_LIBRARY=ON -DBUILD_DESKTOPSTREAMER=ON)
