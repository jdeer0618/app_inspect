# Splunk App Inspect

FROM debian:jessie

ENV APP_INSPECT_VERSION 1.4.1.88

RUN apt-get update && apt-get install -y python-pip libxml2-dev libxslt-dev lib32z1-dev python-lxml python-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ./apps/splunk-appinspect-${APP_INSPECT_VERSION}.tar.gz /tmp/splunk-appinspect-${APP_INSPECT_VERSION}.tar.gz

RUN pip install /tmp/splunk-appinspect-${APP_INSPECT_VERSION}.tar.gz \
    && rm /tmp/splunk-appinspect-${APP_INSPECT_VERSION}.tar.gz

ENTRYPOINT ["/usr/local/bin/splunk-appinspect", "inspect", "--mode", "precert"]
CMD [""]
