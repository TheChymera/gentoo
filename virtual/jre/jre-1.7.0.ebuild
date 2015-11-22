# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DESCRIPTION="Virtual for Java Runtime Environment (JRE)"
SLOT="1.7"
KEYWORDS="amd64 ~arm ~ppc ~ppc64 x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

RDEPEND="|| (
		=virtual/jdk-1.7.0*
		=dev-java/oracle-jre-bin-1.7.0*
	)"
DEPEND=""
