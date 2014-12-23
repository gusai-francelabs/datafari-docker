FROM debian:wheezy
MAINTAINER Olivier Tavard FRANCE LABS <olivier.tavard@francelabs.com>

RUN 	apt-get update && apt-get install -y \
		wget 
  
RUN 	wget ftp://178.33.82.49/debian/datafari.deb 

RUN 	printf "N\nadmin\nadmin\nadmin\nadmin\n" | dpkg -i datafari.deb
  
RUN 	wget ftp://178.33.82.49/debian/datafari2 && \
		mv datafari2 /etc/init.d/datafari
	
RUN 	echo "service datafari start" > startup.sh

RUN 	chmod +x /etc/init.d/datafari && \
		chmod +x /startup.sh
	

CMD 	bash -C '/startup.sh';'bash'

EXPOSE 	8080
	
