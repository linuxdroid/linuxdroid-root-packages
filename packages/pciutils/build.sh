LINUXDROID_PKG_HOMEPAGE=http://mj.ucw.cz/sw/pciutils/
LINUXDROID_PKG_DESCRIPTION="The PCI Utilities are a collection of programs for inspecting and manipulating configuration of PCI devices"
LINUXDROID_PKG_VERSION=3.6.2
LINUXDROID_PKG_SRCURL=ftp://atrey.karlin.mff.cuni.cz/pub/linux/pci/pciutils-$LINUXDROID_PKG_VERSION.tar.gz
LINUXDROID_PKG_SHA256=30005e341bb0ffa734174e592dc8f0dd928e1c9368b859715812149ed91d8f93
LINUXDROID_PKG_BUILD_IN_SRC=yes

linuxdroid_step_pre_configure () {
	local ARCH=$LINUXDROID_ARCH
	if [ $ARCH == "arm" ]; then
		ARCH="armv7l"
	fi

	# ${str^^} returns upper case string
	sed -i "s%\@LINUXDROID_ARCH\@%${ARCH^^}%g" ./lib/config.h
	sed -i "s%\@LINUXDROID_ARCH\@%${ARCH^^}%g" ./lib/config.mk
}
