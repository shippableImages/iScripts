#!/bin/bash -e

VERSION=5.10.1

# Install Perl
curl -L http://install.perlbrew.pl | bash
echo 'source ~/perl5/perlbrew/etc/bashrc' >> $HOME/.bashrc
source ~/perl5/perlbrew/etc/bashrc
perlbrew install perl-${VERSION}
perlbrew switch perl-${VERSION}

# Install cpanminus
curl -L https://cpanmin.us | perl - App::cpanminus
