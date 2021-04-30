FROM tomcat:9
LABEL maintainer="msamulski@gmail.com"

ENV TOMCAT_HOME /usr/local/tomcat
ENV CATALINA_HOME /usr/local/tomcat
ENV BIMSERVER_APP /var/www/bimserver/ROOT

# Increase the heap size
ENV CATALINA_OPTS "-Xms1024M -Xmx4G -XX:+UseCompressedOops"

RUN rm -rf $TOMCAT_HOME/webapps/examples
RUN mkdir /var/www && mkdir /var/www/bimserver

ADD server.xml $CATALINA_HOME/conf/server.xml

ADD https://github.com/opensourceBIM/BIMserver/releases/download/v1.5.182/bimserverwar-1.5.182.war $BIMSERVER_APP.war
RUN unzip $BIMSERVER_APP.war -d $BIMSERVER_APP
