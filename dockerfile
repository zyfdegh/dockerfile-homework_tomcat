FROM njrepo:5000/library/tomcat
MAINTAINER yzhang3@linkernetworks.com

ENV TOMCAT_WEBAPPS /usr/local/tomcat/webapps/

RUN apt-get -y update && \
# apt-get -y install vi && \
apt-get -y install mysql-client && \
ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY food.war $TOMCAT_WEBAPPS
COPY start.sh /start.sh
COPY db.properties /db.properties
COPY config.sh /config.sh
COPY init.sh /init.sh
COPY init-database.sql /init-database.sql

RUN chmod +x /*.sh
RUN mkdir 
# CMD sh /start.sh
# ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
# CMD ["/start.sh"]
