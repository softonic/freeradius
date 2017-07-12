FROM alpine:3.6

RUN apk --no-cache add -U freeradius

EXPOSE 1812/udp 1813/udp 18120/udp

ENTRYPOINT ["radiusd","-xx","-f"]
