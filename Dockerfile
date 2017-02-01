FROM haproxy:1.5

COPY certificate.pem /usr/local/etc/haproxy/certificate.pem
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
