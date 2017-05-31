FROM haproxy:1.7

COPY certificate.pem /usr/local/etc/haproxy/certificate.pem
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy-run.cfg
COPY haproxy-maint.cfg /usr/local/etc/haproxy/haproxy-maint.cfg
COPY maintenance.http /usr/local/etc/haproxy/errors/maintenance.http

RUN ln -sv /usr/local/etc/haproxy/haproxy-run.cfg /usr/local/etc/haproxy/haproxy.cfg 
