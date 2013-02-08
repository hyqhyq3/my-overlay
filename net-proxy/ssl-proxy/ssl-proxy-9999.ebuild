# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit eutils systemd

DESCRIPTION="fuck the gfw"

SRC_URI=""

LICENSE="GPL-2"
SLOT="0"

IUSE="(systemd)"

RDEPEND=""
DEPEND="net-misc/socat[ssl]
sys-apps/systemd"

src_install() {
    systemd_dounit "${FILESDIR}/ssl-proxy.service"
    systemd_dounit "${FILESDIR}/ssl-proxy@.service"
    systemd_dounit "${FILESDIR}/ssl-proxy.socket"
}
