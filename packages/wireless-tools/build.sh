LINUXDROID_PKG_HOMEPAGE=https://hewlettpackard.github.io/wireless-tools/Tools.html
LINUXDROID_PKG_DESCRIPTION="Tools allowing to manipulate the Wireless Extensions"
LINUXDROID_PKG_VERSION=30pre9
LINUXDROID_PKG_SRCURL=https://hewlettpackard.github.io/wireless-tools/wireless_tools.30.pre9.tar.gz
LINUXDROID_PKG_SHA256=abd9c5c98abf1fdd11892ac2f8a56737544fe101e1be27c6241a564948f34c63

LINUXDROID_PKG_BUILD_IN_SRC=yes

linuxdroid_step_make () {
	make \
		CC="$CC" \
		CFLAGS="$CFLAGS $CPPFLAGS -fPIE -pie" \
		LDFLAGS="$LDFLAGS -fPIE -pie" \
		PREFIX="${LINUXDROID_PREFIX}"
}
