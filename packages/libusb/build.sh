LINUXDROID_PKG_HOMEPAGE=http://libusb.info/
LINUXDROID_PKG_DESCRIPTION="A cross-platform user library to access USB devices"
LINUXDROID_PKG_VERSION=1.0.22
LINUXDROID_PKG_SRCURL=https://github.com/libusb/libusb/archive/v${LINUXDROID_PKG_VERSION}.zip
LINUXDROID_PKG_SHA256=cb10afc04399f5aa15cce246e5f043bea3547d128f088d62874039f984db7879
LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS="--disable-udev"

linuxdroid_step_pre_configure() {
	NOCONFIGURE=true ./autogen.sh
}
