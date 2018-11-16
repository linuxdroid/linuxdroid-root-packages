LINUXDROID_PKG_HOMEPAGE=https://github.com/vasi/squashfuse
LINUXDROID_PKG_DESCRIPTION="Squashfuse lets you mount SquashFS archives in user-space"
LINUXDROID_PKG_VERSION=0.1.103
LINUXDROID_PKG_SHA256=bba530fe435d8f9195a32c295147677c58b060e2c63d2d4204ed8a6c9621d0dd
LINUXDROID_PKG_SRCURL=https://github.com/vasi/squashfuse/archive/${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_DEPENDS="libfuse"

linuxdroid_step_pre_configure () {
	aclocal --install
	autoreconf -vfi
}
