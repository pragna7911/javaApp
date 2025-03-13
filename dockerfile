# Step 1: Use an official Tomcat base image
FROM tomcat:9-jdk17-openjdk-slim

# Step 2: Set the working directory for Tomcat
WORKDIR /usr/local/tomcat/webapps

# Step 3: Copy the WAR file from the Jenkins workspace or artifact repository into the container
# Assuming Jenkins places the WAR file in the `target/` directory after building
COPY target/shopping-cart-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose port 8080 for Tomcat
EXPOSE 8080

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
