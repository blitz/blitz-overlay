# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI="3"

inherit eutils

# XXX Dependencies?

DESCRIPTION="A tool that generates TCP graphs"
HOMEPAGE="http://www.tcptrace.org/"
SRC_URI="http://www.tcptrace.org/useful/xplot.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug nls"

S=${WORKDIR}/xplot

src_configure() {
    econf
}

src_install() {
    dobin xplot
    doman xplot.1
    dodoc README
}
