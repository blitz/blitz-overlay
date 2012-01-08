# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="The official Genode toolchain"
HOMEPAGE="http://genode.org/"
SRC_URI="mirror://sourceforge/project/genode/genode-toolchain/${PV}/${P}.tar.bz2"

KEYWORDS="~x86 ~amd64"
SLOT="0"
LICENSE="GPL-3 LGPL-3"

RDEPEND=" amd64? ( app-emulation/emul-linux-x86-baselibs ) "

S="${WORKDIR}"

src_configure() {
    # No configure needed
    true
}

src_compile() {
    # No compilation needed
    true
}

src_install() {
    cp -a ${WORKDIR}/usr ${D}
}

# EOF