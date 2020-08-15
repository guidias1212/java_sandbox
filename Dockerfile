#This is my first Dockerfile, where I want to add a vim option to my simple apache server

#Import base image:
FROM openjdk

#Add a simple label to my Image:
LABEL description="This is an image where I just want to run my own application inside a java prepared container."

#Add a responsible for the changes on raw image:
MAINTAINER Guilherme E M Dias <guilherme@guilherme.com>

#Metadata only:
EXPOSE 8090

#Add an environment variable that is available in the container:
ENV MY_ENV_VARIABLE "Hi, welcome to my brand new adapted container!"

#Copy contents of local folder to folder within the container
COPY ./target/*.jar /java_sandbox/app.jar

#The ADD command is used only when we need to access some external repos or extract from .tar stuff. In most cases try to use COPY instead.
#ADD http://someserver.com/filename.pdf /var/www/html/

#Set a new Working Directory within the container:
WORKDIR /java_sandbox

#Start java app in container:
#RUN java -jar app.jar &

#Set an entry point for the controller:
ENTRYPOINT ["java", "-jar", "app.jar"]

