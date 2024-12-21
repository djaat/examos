# From openjdk:17-jre-slim
# WORKDIR /app
# COPY . .
# RUN javac Hello.java
# CMD [ "java" , "Hello" ]

# Use the JRE image (which is smaller)
FROM openjdk:latest

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install JDK to compile Java code (adding openjdk package)
# RUN javac Hello.java

# Run the compiled Java program
CMD ["java", "Hello"]