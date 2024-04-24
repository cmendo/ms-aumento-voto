#FROM: NOS PROPORCIONA UNA IMAGEN CON BASE A OPENJDK
FROM openjdk:8-jdk-alpine
#EXPOSE: DEFINICION DE PUERTO
EXPOSE 8080
#ARG: PERMITE DEFINIR UNA VARIABLE USABLE EN EL RESTO DEL DOCKER FILE
ARG JAR_FILE=target/*.jar
#ADD: PERMITE AGREGAR YDESCOMPRIMIR ARCHIVOS Y DIRECTORIOS AL CONTENEDOR Y LA CAPACIDAD DE AGREGAR ARCHIVOS VIA URL
ADD ${JAR_FILE} app.jar
#ENTRYPOINT: DOCKER TIENE UN ENTRYPOINT POR DEFECTO, /bin/sh -c, QUE SE EJECUTA CUANDO EL CONTENEDOR ESTA LISTO. 
#ESTE COMANDO PERMITE SOBREESCRIBIRLO
ENTRYPOINT ["java","-jar","/app.jar"]
