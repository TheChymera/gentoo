# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

XORG_DOC=doc
XORG_MULTILIB=yes
inherit toolchain-funcs xorg-3

DESCRIPTION="X.Org X11 library"

KEYWORDS="~alpha amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sparc ~x86 ~x64-cygwin ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE="ipv6 test"
RESTRICT="!test? ( test )"

RDEPEND="
	>=x11-libs/libxcb-1.11.1[${MULTILIB_USEDEP}]
	!<x11-base/xorg-proto-2019.2
	x11-misc/compose-tables"
DEPEND="${RDEPEND}
	x11-base/xorg-proto
	x11-libs/xtrans"
BDEPEND="test? ( dev-lang/perl )"

pkg_setup() {
	XORG_CONFIGURE_OPTIONS=(
		$(use_with doc xmlto)
		$(use_enable doc specs)
		$(use_enable ipv6)
		--without-fop
		CPP="$(tc-getPROG CPP cpp)"
	)
}

src_install() {
	xorg-3_src_install
	rm -Rf "${ED}/usr/share/X11/locale"
}
