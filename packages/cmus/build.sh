TERMUX_PKG_HOMEPAGE=https://cmus.github.io/
TERMUX_PKG_DESCRIPTION="Small, fast and powerful console music player"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.9.1~exp.71ebcd3
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, pulseaudio, ffmpeg, libmad, opusfile, libflac, libvorbis"
TERMUX_PKG_SRCURL=https://github.com/pgaskin/cmus/archive/${TERMUX_PKG_VERSION##*.}.tar.gz
TERMUX_PKG_SHA256=a791355a1b459d3f630653e937ebfb4743ab2b10089f14b5f88ce79051fb4f56
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LD=$CC
	export CUE_LIBS=" -lm"
	export CONFIG_OSS=n
}

termux_step_configure() {
	./configure prefix=$TERMUX_PREFIX
}
