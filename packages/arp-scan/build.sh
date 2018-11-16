LINUXDROID_PKG_HOMEPAGE=https://github.com/royhills/arp-scan
LINUXDROID_PKG_DESCRIPTION="arp-scan is a command-line tool for system discovery and fingerprinting. It constructs and sends ARP requests to the specified IP addresses, and displays any responses that are received."
LINUXDROID_PKG_VERSION=1.9
LINUXDROID_PKG_SHA256=b2a446a170e4a2feeb825cd08db48a147f8dffae702077f33e456c4200e7afb0
LINUXDROID_PKG_SRCURL=https://github.com/royhills/arp-scan/archive/$LINUXDROID_PKG_VERSION.tar.gz
LINUXDROID_PKG_DEPENDS="libpcap"
LINUXDROID_PKG_BUILD_DEPENDS="libpcap-dev"

if [ $LINUXDROID_ARCH_BITS == 32 ]; then
    # Retrieved from compilation on device:
    LINUXDROID_PKG_EXTRA_CONFIGURE_ARGS+="pgac_cv_snprintf_long_long_int_format=%lld"
fi

linuxdroid_step_pre_configure () {
	aclocal
    	autoheader
	automake --add-missing
	autoconf
}
