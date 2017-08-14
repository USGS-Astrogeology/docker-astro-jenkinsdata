FROM usgsastro/centos7:latest
MAINTAINER rbogle@usgs.gov

RUN useradd -d "/var/lib/jenkins" -u 998 -m -s /bin/bash jenkins
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins

VOLUME ["/var/log/jenkins", "/var/lib/jenkins"]

USER jenkins

CMD ["echo", "Data container for Jenkins"]
