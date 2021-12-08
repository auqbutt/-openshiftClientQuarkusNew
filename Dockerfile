FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4
WORKDIR /work/
COPY ./code-with-quarkus-client/target/*-runner /work/application
RUN chmod 775 /work /work/application \
&& chown -R 1001 /work \
&& chmod -R "g+rwX" /work \
&& chown -R 1001:root /work

EXPOSE 8080
USER 1001

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]