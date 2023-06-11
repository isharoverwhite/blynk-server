FROM openjdk:11
WORKDIR /app
RUN mkdir appdata/
EXPOSE 9443/tcp
EXPOSE 8080/tcp
EXPOSE 80/tcp
COPY server-0.41.17.jar /app/server-0.41.17.jar
RUN chmod +x /app/server-0.41.17.jar
CMD ["java", "-jar", "/app/server-0.41.17.jar"]