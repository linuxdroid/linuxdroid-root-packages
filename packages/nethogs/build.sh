LINUXDROID_PKG_HOMEPAGE=https://github.com/raboof/nethogs
LINUXDROID_PKG_DESCRIPTION="Net top tool grouping bandwidth per process"
LINUXDROID_PKG_VERSION=0.8.5
LINUXDROID_PKG_REVISION=2
LINUXDROID_PKG_SRCURL=https://github.com/raboof/nethogs/archive/v${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_BUILD_IN_SRC=yes
LINUXDROID_PKG_FOLDERNAME=nethogs-${LINUXDROID_PKG_VERSION}
LINUXDROID_PKG_DEPENDS="ncurses, libpcap"
LINUXDROID_PKG_MAINTAINER="Pierre Rudloff <contact@rudloff.pro>"
LINUXDROID_PKG_SHA256=6a9392726feca43228b3f0265379154946ef0544c2ca2cac59ec35a24f469dcc
LINUXDROID_PKG_EXTRA_MAKE_ARGS="nethogs"
linuxdroid_step_pre_configure () {
	export CPPFLAGS="$CPPFLAGS -Wno-c++11-narrowing"
}
