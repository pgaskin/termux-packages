TERMUX_PKG_HOMEPAGE=https://cmus.github.io/
TERMUX_PKG_DESCRIPTION="Small, fast and powerful console music player"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@pgaskin"
TERMUX_PKG_VERSION=2.9.1+git20210608.exp.462f7da
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, pulseaudio, ffmpeg, libmad, opusfile, libflac, libvorbis"
TERMUX_PKG_SRCURL=https://github.com/pgaskin/cmus/archive/${TERMUX_PKG_VERSION##*.}.tar.gz
TERMUX_PKG_SHA256=5a98f7e68a77779b6861fedb1d694bb25dd9ec3696e9cd55efedec6732537194
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LD=$CC
	export CUE_LIBS=" -lm"
	export CONFIG_OSS=n
}

termux_step_configure() {
	./configure prefix=$TERMUX_PREFIX
}
