#!/bin/sh
wget -qO- https://check.torproject.org/torbulkexitlist | sed "s/^/deny /g; s/$/;/g" > /etc/nginx/conf.d/tor-ip-list.conf;
systemctl reload nginx
