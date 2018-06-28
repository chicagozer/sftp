FROM atmoz/sftp:latest
RUN apt-get update
RUN apt-get -y install s3fs
RUN mkdir -p /etc/sftp.d
COPY starts3fs /etc/sftp.d 
COPY entrypoint /
RUN chmod u+x /entrypoint
