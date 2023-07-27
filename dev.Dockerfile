FROM openjdk:11

CMD mkdirs /app/files

ADD ./build/libs/spring-cloud-eureka.jar /app/spring-cloud-eureka.jar
ENTRYPOINT ["java", "-Duser.timezone=UTC", "-XX:+UseSerialGC", "-Xss512k", "-Xmx128M","-jar", "/app/spring-cloud-eureka.jar"]
EXPOSE 8761