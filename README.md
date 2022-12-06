# Prevent Tor users from accessing the server
![block Tor in nginx](https://hsto.org/webt/fy/3o/1m/fy3o1mj_hutgeir72p7hbyygvro.png)

## Usage
1) Upload `block-tor.sh` to `/etc/nginx/`
2) Add a Cron job, Tor Exit List will be updated daily at 5 in the morning
```
00 05 * * * sh /etc/nginx/block-tor.sh
```
3) Include Tor Exit List in nginx configuration file
```
include /etc/nginx/conf.d/tor-ip-list.conf;
```
4) Test the configuration file
```
sudo nginx -t
```
If everything is ok reload nginx configuration
```
sudo systemctl reload nginx
```
