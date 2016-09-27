FROM centos:7

MAINTAINER AusNimbus <support@ausnimbus.com.au>

ENV NRSYSMOND_VERSION 2.3.0.132

LABEL io.k8s.description="New Relic Linux Server Monitor" \
      io.k8s.display-name="nrsysmond"

RUN curl -o newrelic-sysmond.tar.gz -SL https://download.newrelic.com/server_monitor/archive/${NRSYSMOND_VERSION}/newrelic-sysmond-${NRSYSMOND_VERSION}-linux.tar.gz && \
      tar -xvzf newrelic-sysmond.tar.gz && \
      cp newrelic-sysmond-${NRSYSMOND_VERSION}-linux//daemon/nrsysmond.x64 /usr/sbin/nrsysmond && \
      rm -r newrelic-sysmond-*-linux

CMD /usr/sbin/nrsysmond -E -F
