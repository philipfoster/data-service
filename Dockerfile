FROM adoptopenjdk/openjdk8
EXPOSE 9000
RUN mkdir -p /app/target
RUN mkdir -p /target
RUN touch /app/target/data-service.log
RUN chmod a+rw -R /app
RUN chmod a+rw -R /target

COPY target/*.jar /app/application.jar

RUN chown 9000 -R /app
RUN ls -la /app /app/application.jar && chmod 744 /app/application.jar && chown 9000 /app/application.jar

USER 9000


ENTRYPOINT ["java","-jar","/app/application.jar"]
