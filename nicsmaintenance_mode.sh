#!/bin/bash
if [ ! $# == 1 ]; then
  echo "Usage: $0 on|off"
  exit
fi
if [ "$1" == on ]; then
	docker exec nics_proxy_1 ln -svf /usr/local/etc/haproxy/haproxy-maint.cfg /usr/local/etc/haproxy/haproxy.cfg
elif [ "$1" == off ]; then
	docker exec nics_proxy_1 ln -svf /usr/local/etc/haproxy/haproxy-run.cfg /usr/local/etc/haproxy/haproxy.cfg
else
	echo "Usage: $0 on|off"
	exit
fi
#Reload the config gracefully - See: https://hub.docker.com/_/haproxy/ for details.
docker kill -s HUP nics_proxy_1
