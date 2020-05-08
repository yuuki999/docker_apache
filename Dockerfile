FROM centos:7

LABEL \
    org.label-schema.schema-version="1.0" \
    org.label-schema.name="CentOS Base Image" \
    org.label-schema.vendor="CentOS" \
    org.label-schema.license="GPLv2" \
    org.label-schema.build-date="20200504" \
    org.opencontainers.image.title="CentOS Base Image" \
    org.opencontainers.image.vendor="CentOS" \
    org.opencontainers.image.licenses="GPL-2.0-only" \
    org.opencontainers.image.created="2020-05-04 00:00:00+01:00"

# yum install
RUN yum -y update && \
    yum -y install git && \
    yum -y install vim && \
    yum -y install tree && \
    yum -y install firewalld && \
    yum -y install httpd httpd-devel mod_ssl && \
    yum -y install mlocate && \
    yum -y install wget && \
    yum -y install sudo

CMD ["/bin/bash"]