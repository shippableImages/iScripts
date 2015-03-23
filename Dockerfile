FROM ubuntu:12.04
MAINTAINER Stephanie Lingwood "stephanie@shippable.com"

ADD os/ubuntu/12_04.sh /os/ubuntu/
RUN /bin/bash -c "source /os/ubuntu/12_04.sh"

ADD language/Node_js/pre.sh /language/Node_js/
RUN /bin/bash -c "source /language/Node_js/pre.sh"

ADD language/Node_js/version/0_6.sh /language/Node_js/version/
RUN /bin/bash -c "source /language/Node_js/version/0_6.sh"

ADD language/Node_js/post.sh /language/Node_js/
RUN /bin/bash -c "source /language/Node_js/post.sh"