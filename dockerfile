FROM njrepo:5000/library/tomcat
MAINTAINER yzhang3@linkernetworks.com

ENV TOMCAT_WEBAPPS /usr/local/tomcat/webapps/

RUN apt-get -y update && \
apt-get -y install mysql-client && \
ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD food.war $TOMCAT_WEBAPPS
ADD start.sh /start.sh
ADD db.properties /db.properties
ADD config.sh /config.sh
ADD init.sh /init.sh
ADD init-database.sql /init-database.sql

RUN chmod +x /*.sh

# CMD sh /start.sh
# ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
# CMD ["/start.sh"]
