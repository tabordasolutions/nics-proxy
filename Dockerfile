FROM haproxy:1.5

COPY self-signed.pem /usr/local/etc/haproxy/selfsigned.pem
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
