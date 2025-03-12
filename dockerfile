 FROM ubuntu:24.04
RUN apt-get update && \
 apt-get install openjdk-17-jdk maven git -y && \
 rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/guru214/spring-petclinic.git
WORKDIR /spring-petclinic
RUN mvn clean package
RUN ls -l target/
VOLUME ["/spring-petclinic/target"]
CMD ["java", "jar", "target/spring-petclinic-2.7.3.jar"]
