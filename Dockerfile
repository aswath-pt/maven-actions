FROM alpine
RUN apk upgrade && apk add wget && apk add openjdk11
RUN mkdir /usr/local/tomcat 
ADD wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz 
RUN tar -xzvf apache-tomcat-9.0.58.tar.gz -C /usr/local/
ADD ./target/mywebapp.war /usr/local/apache-tomcat-9.0.58/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
