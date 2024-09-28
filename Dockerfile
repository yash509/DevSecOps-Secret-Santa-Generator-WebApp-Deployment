# FROM openjdk:8u151-jdk-alpine3.7
  
# EXPOSE 3000
 
# ENV APP_HOME /usr/src/app

# COPY target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

# WORKDIR $APP_HOME

# ENTRYPOINT exec java -jar app.jar 


# Use the official Nginx image as base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the content of the Band Website repository into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
