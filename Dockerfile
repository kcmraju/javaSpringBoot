FROM maven
WORKDIR /opt/app
EXPOSE 8080
COPY . .
RUN mvn clean package && cp ./target/*.war /opt/app/app.war
ENTRYPOINT ["java","-jar","app.war"]
