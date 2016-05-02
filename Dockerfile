FROM debian:jessie
MAINTAINER Caber Chu

COPY *.sh /build/

RUN /build/prepare.sh && \
	/build/cleanup.sh && \
	rm -rf /build

ENV PYTHONPATH $PYTHONPATH:/usr/lib/python2.7/dist-packages
ENV PATH $PATH:/usr/local/src/google_apengine

EXPOSE 8080

# CMD ["/usr/local/src/google_appengine/dev_appserver.py", "/app"]
CMD ["/bin/bash"]
