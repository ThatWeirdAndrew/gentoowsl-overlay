# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
  
EAPI=7

inherit git-r3
EGIT_REPO_URI="https://github.com/wslutilities/wslu.git"
KEYWORDS="amd64"

DESCRIPTION="A collection of utilities for WSL"
HOMEPAGE="https://github.com/wslutilities/wslu"

LICENSE="GPL-3+"
SLOT="0"

DEPEND="
   sys-devel/bc
   media-gfx/imagemagick
   app-shells/bash-completion
   sys-devel/make
   dev-vcs/git 
   app-arch/gzip
"
RDEPEND="${DEPEND}"

src_configure() {
   emake
} 

src_install() {
   emake install DESTDIR=${D} 
}
