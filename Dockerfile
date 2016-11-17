FROM centos:latest

ENV REDIS_HOST=172.30.86.9
ENV REDIS_PORT=6379

# net-tools for debugging purposes
RUN yum -y update && yum -y install ruby net-tools
RUN gem install sinatra redis

COPY hello-world.rb /hello-world.rb

# Sinatra binding to localhost instead of 0.0.0.0
CMD ["ruby","hello-world.rb","-o","0.0.0.0"]

EXPOSE 4567
