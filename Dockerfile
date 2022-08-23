FROM openjdk:17-oracle
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
ARG JAR_FILE=/build/libs/*-SNAPSHOT.jar
COPY ${JAR_FILE} /usr/app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/app/app.jar"]
