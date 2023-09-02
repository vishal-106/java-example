FROM alpine/git as checkout
WORKDIR /app
RUN git clone https://github.com/vishal-106/java-example.git

FROM maven:amazoncorretto as build
WORKDIR /javaapp
COPY . .
RUN mvn clean install

FROM adhig93/tomcat-conf
COPY --from=build /javaapp/target/*.war /usr/local/tomcat/webapps/
