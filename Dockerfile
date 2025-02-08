# Use a Debian-based OpenJDK image for compatibility with DuckDB
FROM openjdk:19-buster

# Define the plugins directory (should match the runtime injection mount)
ENV MB_PLUGINS_DIR=/plugins

# Download the official Metabase jar (update the URL if a newer version is available)
ADD https://downloads.metabase.com/v0.52.4/metabase.jar /home/metabase.jar

# Start Metabase
CMD ["java", "-jar", "/home/metabase.jar"]
