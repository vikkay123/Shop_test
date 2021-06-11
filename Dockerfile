FROM tomcat:9-jdk8
COPY  target/SpringSecurityApp.war /usr/local/tomcat/webapps/ROOT.war