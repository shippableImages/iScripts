FROM ubuntu:12.04

COPY os/ubuntu/12_04.sh /os/ubuntu/
RUN /bin/bash -c "source /os/ubuntu/12_04.sh"

COPY language/Node_js/pre.sh /language/Node_js/
RUN /bin/bash -c "source /language/Node_js/pre.sh"

COPY language/Node_js/version/0_10.sh /language/Node_js/version/
RUN /bin/bash -c "source /language/Node_js/version/0_10.sh"

COPY language/Node_js/post.sh /language/Node_js/
RUN /bin/bash -c "source /language/Node_js/post.sh"
