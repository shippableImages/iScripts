FROM shippable/min08base
MAINTAINER Avi "avi@shippable.com"

# setting up GO
ADD go11Installer.sh /home/shippable/setup/
RUN /bin/bash /home/shippable/setup/go11Installer.sh

#moving gvm init file so that non-interactive shells can run with right versions
ADD gvm_init.sh /etc/profile.d/

# expose port 22 to enable ssh 
EXPOSE 22