TERMUX_PKG_HOMEPAGE=https://cmus.github.io/
TERMUX_PKG_DESCRIPTION="Small, fast and powerful console music player"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@pgaskin"
TERMUX_PKG_VERSION=2.9.1+git20210604.exp.45c5a31
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, pulseaudio, ffmpeg, libmad, opusfile, libflac, libvorbis"
TERMUX_PKG_SRCURL=https://github.com/pgaskin/cmus/archive/${TERMUX_PKG_VERSION##*.}.tar.gz
TERMUX_PKG_SHA256=b9043a69f05b464a943d3e3626e995a278e6ac1f062242100f67742410ab510c
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LD=$CC
	export CUE_LIBS=" -lm"
	export CONFIG_OSS=n
}

termux_step_configure() {
	./configure prefix=$TERMUX_PREFIX
}
