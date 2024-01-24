# Use an official GeoServer image as the base image
FROM kartoza/geoserver:latest

# Expose the default GeoServer port (8080) and the port you want to use (5080)
EXPOSE 8080 5080

# Set an environment variable to customize the GeoServer data directory
ENV GEOSERVER_DATA_DIR="/opt/geoserver/data_dir"

# Create a volume for the GeoServer data directory
VOLUME $GEOSERVER_DATA_DIR

# Start GeoServer on port 5080
CMD ["sh", "-c", "/opt/geoserver/bin/startup.sh && tail -F /opt/geoserver/data/logs/geoserver.log"]
