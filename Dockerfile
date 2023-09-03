FROM alpine/git as checkout
WORKDIR /app
RUN git clone https://github.com/vishal-106/java-example.git

FROM maven:amazoncorretto as build
WORKDIR /javaapp
COPY . .
RUN mvn clean install
