FROM adoptopenjdk/openjdk11:jre-11.0.7_10-alpine
EXPOSE 9000

COPY target/*.jar /app/application.jar

RUN ls -la /app /app/application.jar && chmod 744 /app/application.jar && chown 9000 /app/application.jar

USER 9000


ENTRYPOINT ["java","-jar","/app/application.jar"]
