FROM debian:jessie-backports
MAINTAINER Olivier Tavard FRANCE LABS <olivier.tavard@francelabs.com> 

RUN 	apt-get update && apt-get install -y \ 
		wget \
 		curl \
		jq \
		debconf \
		python-minimal \
		unzip

RUN 	wget ftp://178.33.82.49/debian/datafari.deb
RUN 	DEBIAN_FRONTEND=noninteractive dpkg -i datafari.deb

EXPOSE 8080
EXPOSE 8983

WORKDIR	/opt/datafari
CMD ["/bin/bash", "-c", "/opt/datafari/bin/start-datafari.sh -f && sleep 5 && tail -f /opt/datafari/logs/solr.log"]

