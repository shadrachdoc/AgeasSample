FROM adoptopenjdk/openjdk15:ubi
ENV APP_HOME=/usr/app/
WORKDIR $APP_HOME
ARG JAR_FILE=/build/libs/*.jar
COPY ${JAR_FILE} /usr/app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/usr/app/app.jar"]
