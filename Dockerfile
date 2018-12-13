FROM ubuntu:16.04
LABEL Description="This image is used to run the Wickr GUI"
MAINTAINER manus <manus@riseup.net>
ADD VERSION .

WORKDIR /root

COPY WickrMe*.zip /root/WickrMe.zip

#Install some requirements not covered in the official WickrMe packets
RUN apt-get update && apt-get install --assume-yes --no-install-recommends \
			apt-utils \
			hunspell \
			libprotobuf9v5 \ 
			libnss3 \
			libxss1 \
			libxslt1.1

#Install unzip
RUN apt-get  install --assume-yes unzip

#...and unzip  the package
RUN unzip WickrMe.zip -d wickrdir

#install both wickr packages
RUN apt-get install --assume-yes ./wickrdir/wickr-qt*_amd64.deb
RUN apt-get install --assume-yes ./wickrdir/WickrMe*_amd64.deb

#Clean up!
RUN apt-get clean \
&& rm --force --recursive /var/lib/apt/lists/* /tmp/* /var/tmp/* ./wickrdir

ENTRYPOINT ["WickrMe"]

