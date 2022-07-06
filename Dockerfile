FROM alpine:latest

RUN apk add openjdk11

WORKDIR /opt

ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.81/bin/apache-tomcat-8.5.81.tar.gz .

RUN tar xf apache-tomcat-8.5.81.tar.gz
RUN rm apache-tomcat-8.5.81.tar.gz
RUN mv apache-tomcat-8.5.81 tomcat8

WORKDIR /opt/tomcat8/webapps/app

copy index.html .

EXPOSE 8080

CMD ["/opt/tomcat8/bin/catalina.sh","run"]
