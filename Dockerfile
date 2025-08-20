# Use Tomcat 10 with JDK 17 (supports Jakarta EE 10)
FROM tomcat:10.1-jdk17-temurin

# Remove default Tomcat apps to ensure a clean deployment
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file and rename it to ROOT.war
COPY spiceheritage.war /usr/local/tomcat/webapps/ROOT.war

# Set Tomcat to listen on Render's dynamic port
ENV CATALINA_OPTS="-Dport.http=$PORT"

# Optional: set environment variables for your DB (can also be set in Render dashboard)
# ENV DB_URL=jdbc:postgresql://host:port/dbname
# ENV DB_USER=username
# ENV DB_PASSWORD=password

# Expose 8080 (Render maps $PORT automatically)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
