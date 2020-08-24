FROM ubuntu:latest
EXPOSE 80 443 992 1194 5555
#Copy latest version of softether download from: https://www.softether-download.com/en.aspx?product=softether
COPY softether-vpnserver-v4.34-9745-rtm-2020.04.05-linux-x64-64bit.tar.gz softether-vpnserver-v4.34-9745-rtm-2020.04.05-linux-x64-64bit.tar.gz
RUN apt-get update && apt-get upgrade -y && apt-get install build-essential -y \
&& tar xzvf softether-vpnserver-v4.34-9745-rtm-2020.04.05-linux-x64-64bit.tar.gz
WORKDIR /vpnserver
RUN rm .install.sh
COPY .install.sh .install.sh
RUN make
ENTRYPOINT [ "sh", "-c" ]
CMD [ "./vpnserver start && tail -f /dev/null" ] 
