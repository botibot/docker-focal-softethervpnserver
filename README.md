# docker-focal-softethervpnserver
Dockerfile to build softether vpn server image based on ubuntu focal container

Built with the tail -f /dev/null parameter to keep the container running after the vpnserver has been started.
The best way to keep the container running is with the --restart always parameter.

docker container run --name --restart always -d -p 80:80 -p 443:443 -p 992:992 -p 1194:1194/udp -p 5555:5555 cayorch/softetherfocal:latest
