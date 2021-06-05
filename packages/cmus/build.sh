TERMUX_PKG_HOMEPAGE=https://cmus.github.io/
TERMUX_PKG_DESCRIPTION="Small, fast and powerful console music player"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@pgaskin"
TERMUX_PKG_VERSION=2.9.1+git20210605.exp.efa21cc
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, pulseaudio, ffmpeg, libmad, opusfile, libflac, libvorbis"
TERMUX_PKG_SRCURL=https://github.com/pgaskin/cmus/archive/${TERMUX_PKG_VERSION##*.}.tar.gz
TERMUX_PKG_SHA256=3fd5b0b2b20d1769f73d71f1a003f6dd17794a2212784c31d0b6ff6ca50e6971
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LD=$CC
	export CUE_LIBS=" -lm"
	export CONFIG_OSS=n
}

termux_step_configure() {
	./configure prefix=$TERMUX_PREFIX
}
