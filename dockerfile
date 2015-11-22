FROM njrepo:5000/library/tomcat
MAINTAINER yzhang3@linkernetworks.com

ENV TOMCAT_WEBAPPS /usr/local/tomcat/webapps/

RUN ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ADD food.war $TOMCAT_WEBAPPS
ADD start.sh /start.sh
