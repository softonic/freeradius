FROM centos:7

RUN yum install openldap-clients openldap-servers freeradius-ldap freeradius-utils freeradius freeradius-krb5 samba -y

ADD rootfs /

EXPOSE 1812/udp 1813/udp 18120/udp

ENTRYPOINT ["/init"]
