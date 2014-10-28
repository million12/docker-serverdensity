FROM million12/centos-supervisor
MAINTAINER Przemyslaw Ozgo linux@ozgo.info, Marcin Ryzycki marcin@m12.io

ADD createnode.sh /config/init/createnode.sh

RUN \
yum update -y && \ 
yum install -y sudo && \
yum clean all && \
cd /tmp && \
curl -O https://www.serverdensity.com/downloads/agent-install.sh && \
chmod +x agent-install.sh

ADD supervisord.conf /etc/supervisor.d/sd.conf