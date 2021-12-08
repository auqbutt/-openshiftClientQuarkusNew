FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4
WORKDIR /work/
COPY ./code-with-quarkus-client/target/code-with-quarkus-client-1.0.0-SNAPSHOT-runner.exe /work/application
RUN chmod 775 /work
EXPOSE 8080

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]