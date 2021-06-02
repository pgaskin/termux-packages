TERMUX_PKG_HOMEPAGE=https://cmus.github.io/
TERMUX_PKG_DESCRIPTION="Small, fast and powerful console music player"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.9.1~exp.a3e6caa
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, pulseaudio, ffmpeg, libmad, opusfile, libflac, libvorbis"
TERMUX_PKG_SRCURL=https://github.com/pgaskin/cmus/archive/${TERMUX_PKG_VERSION##*.}.tar.gz
TERMUX_PKG_SHA256=ba4543fa2e88e0f04e285cf9f8c5031d0fe09f2795196b3f9deec5a8b627e25d
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LD=$CC
	export CUE_LIBS=" -lm"
	export CONFIG_OSS=n
}

termux_step_configure() {
	./configure prefix=$TERMUX_PREFIX
}
