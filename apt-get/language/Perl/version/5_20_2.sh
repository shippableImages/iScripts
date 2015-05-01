#!/bin/bash -e

VERSION=5.20.2

# Install Perl
curl -L http://install.perlbrew.pl | bash
echo 'source ~/perl5/perlbrew/etc/bashrc' >> $HOME/.bashrc
source ~/perl5/perlbrew/etc/bashrc
perlbrew install perl-${VERSION}
perlbrew switch perl-${VERSION}
