# CORRECTED: Use a Tomcat version that supports Jakarta EE 6.0
FROM tomcat:10.1-jdk17-temurin

# Remove the default Tomcat webapps to ensure a clean deployment
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file and rename it to ROOT.war to make it the default app
COPY spiceheritage.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to the outside world
EXPOSE 8080

# The command to run when the container starts
CMD ["catalina.sh", "run"]
