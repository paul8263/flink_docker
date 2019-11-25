FROM centos:centos7
MAINTAINER paul8263
RUN yum install java-1.8.0-openjdk -y
ENV FLINK_HOME=/flink-1.8.1
ADD flink.tar.gz /
COPY run.sh /root/
EXPOSE 8088
VOLUME $FLINK_HOME/conf
ENTRYPOINT ["/root/run.sh"]
#ENTRYPOINT ["echo 1"]
