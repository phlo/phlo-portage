# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( pypy3 python3_{10..12} )
inherit distutils-r1 git-r3

DESCRIPTION="Custom Gentoo EFI stub kernel updater"
HOMEPAGE="https://github.com/phlo/ekernel"
EGIT_REPO_URI="https://github.com/phlo/ekernel.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	sys-apps/portage[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	sys-boot/efibootmgr
"

distutils_enable_tests unittest
