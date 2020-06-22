Official website : https://www.torproject.org/  
  
# Usage :
    version: "3.7"
    services:
      tor:
        image: mihokookayami/tor
        container_name: tor
        volumes:
          - /my/conf/path/torrc:/etc/tor/torrc:ro
        restart: unless-stopped
  
# /etc/tor/torrc :
    SOCKSPort 0.0.0.0:9050
    SocksPolicy accept 172.17.0.0/16
    SocksPolicy reject *
    Log notice stdout
    DataDirectory /var/lib/tor
