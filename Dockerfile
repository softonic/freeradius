FROM alpine:3.6

RUN apk --no-cache add -U freeradius freeradius-ldap freeradius-krb5 openldap-clients samba samba-winbind

EXPOSE 1812/udp 1813/udp 18120/udp

ENTRYPOINT ["radiusd","-xx","-f"]
