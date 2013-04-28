
set(LUNCHBOX_PACKAGE_VERSION 1.7.1)
set(LUNCHBOX_REPO_URL https://github.com/Eyescale/Lunchbox.git)
set(LUNCHBOX_REPO_TAG master)
set(LUNCHBOX_DEPENDS eyescale eyescalePorts hwloc DNSSD REQUIRED Boost)
set(LUNCHBOX_DEB_DEPENDS libboost-all-dev libhwloc-dev
  libavahi-compat-libdnssd-dev)
set(LUNCHBOX_BOOST_COMPONENTS "regex serialization")
