FROM ubuntu:16.04
FROM oguya/onadata:base_image

# Copy your application code to the container (make sure you create a .dockerignore file if any large files or directories should be excluded)
RUN mkdir /opt/azizi_onadata/

RUN rm -rf /var/lib/apt/lists/* \
  && find . -name '*.pyc' -type f -delete

CMD ["/opt/azizi_onadata/docker/docker-entrypoint.sh"]
