FROM alpine:3.20
LABEL org.opencontainers.image.source="https://github.com/civillabs/civil-os-database-schema"
WORKDIR /migrations
COPY migrations/ /migrations/
USER 10001:10001
VOLUME ["/migrations"]
CMD ["cp", "-r", "/migrations/.", "/target/"]