From tomcat:8.0
ADD **/*.war http://52.59.246.182:/opt/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]