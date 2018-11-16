LINUXDROID_PKG_MAINTINER="Henrik Grimler @Grimler91"
LINUXDROID_PKG_HOMEPAGE=https://github.com/libfuse/libfuse
LINUXDROID_PKG_DESCRIPTION="FUSE (Filesystem in Userspace) is an interface for userspace programs to export a filesystem to the Linux kernel"
LINUXDROID_PKG_VERSION=2.9.8
LINUXDROID_PKG_SHA256=ceadc28f033b29d7aa1d7c3a5a267d51c2b572ed4e7346e0f9e24f4f5889debb
LINUXDROID_PKG_SRCURL=https://github.com/libfuse/libfuse/archive/fuse-${LINUXDROID_PKG_VERSION}.tar.gz
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="
--disable-mtab 
MOUNT_FUSE_PATH=$LINUXDROID_PREFIX/bin
UDEV_RULES_PATH=$LINUXDROID_PREFIX/etc/udev/rules.d
INIT_D_PATH=$LINUXDROID_PREFIX/etc/init.d
"
# Code uses telldir() and seekdir():
LINUXDROID_PKG_API_LEVEL=23
# Requires 64bit off_t, we use super-ugly probably none-functioning patch to work around that for now
linuxdroid_step_pre_configure () {
	./makeconf.sh
}
