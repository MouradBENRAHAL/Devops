FROM maven:3.8.2-jdk-8
RUN apt-get install curl
RUN curl -u admin:admin -o achat.jar "172.10.0.140:8081/repository/maven-releases/com/esprit/examen/tpAchatProject/1.0/tpAchatProject-1.0.jar" -L
ENTRYPOINT ["java","-jar","/achat.jar"]
EXPOSE 8089
