FROM oraclelinux:8

RUN yum install -y oraclelinux-developer-release-el8 && \
    yum-config-manager --enable ol8_developer && \
    yum install -y sudo git terraform terraform-provider-oci && \
    terraform -v

CMD [ "sleep", "infinity" ]