# Build JPetStore war
FROM icr.io/appcafe/ibm-semeru-runtimes:open-8-jdk-focal as builder
COPY . /src
WORKDIR /src
RUN ./build.sh all

# Use WebSphere Liberty base image from the Docker Store
# FROM websphere-liberty:javaee7
FROM icr.io/appcafe/websphere-liberty:full-java8-ibmjava-ubi

# Copy war from build stage and server.xml into image
COPY --from=builder /src/dist/jpetstore.war /opt/ibm/wlp/usr/servers/defaultServer/apps/
COPY --from=builder /src/server.xml /opt/ibm/wlp/usr/servers/defaultServer/
RUN mkdir -p /config/lib/global
COPY lib/mysql-connector-java-3.0.17-ga-bin.jar /config/lib/global
COPY lib/postgresql-42.5.1.jar /config/lib/global

