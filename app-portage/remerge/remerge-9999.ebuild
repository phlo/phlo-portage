# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="A quick and dirty binary package host implementation"
HOMEPAGE="https://github.com/phlo/remerge"
EGIT_REPO_URI="https://github.com/phlo/remerge.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="+client server"

REQUIRED_USE="^^ ( client server )"

RDEPEND="
	app-arch/tar
	app-arch/xz-utils
	net-misc/openssh
	sys-apps/portage
	client? (
		app-misc/resolve-march-native
		net-misc/rsync
	)
	server? (
		app-misc/screen
	)
"

src_install() {
	# binaries
	use client && dobin src/client/remerge*
	use server && dobin src/server/remerge*

	# config files
	insinto /etc/remerge
	use client && doins src/client/client.conf
	use server && doins src/server/server.conf

	# libraries
	insinto /usr/lib/remerge
	doins src/common.sh
	use client && doins src/client/client.sh
	use server && doins src/server/server.sh
}
