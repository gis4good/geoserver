FROM ubuntu

# File Author / Maintainer
MAINTAINER Himesh Patra

# Update the repository sources list
RUN apt-get update

FROM docker kartoza/geoserver