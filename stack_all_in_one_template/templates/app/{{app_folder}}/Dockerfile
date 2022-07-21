FROM docker.prd.useredecloud/java:1.11.0

ENV JAVA_PARAMETERS=-Dserver.port=8080

ARG APPDYNAMICS=false


# hadolint ignore=DL3045
COPY ./target/*.jar {{name_app}}.jar

EXPOSE 8080

# hadolint ignore=DL3025
CMD java $JAVA_PARAMETERS -jar {{name_app}}.jar
