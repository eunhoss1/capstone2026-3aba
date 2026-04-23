FROM eclipse-temurin:25-jdk

WORKDIR /app

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build -x test

ENTRYPOINT ["sh", "-c", "java -jar build/libs/*.jar"]