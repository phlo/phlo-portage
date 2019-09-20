# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Automatically generate C++ man pages from cppreference.com"
HOMEPAGE="https://github.com/jeaye/stdman"
SRC_URI="https://github.com/jeaye/stdman/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"

src_prepare() {
	default
	sed -i '/gzip/d' do_install
}
