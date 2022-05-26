FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y unzip
# install AWS
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/awscliv2.zip"
RUN unzip /awscliv2.zip
RUN /aws/install
RUN rm -rf /aws /awscliv2.zip

RUN apt-get install -y vim
RUN apt-get install -y less
RUN apt-get install -y jq
# postgresql client
RUN apt-get install -y postgresql-client

RUN apt-get install -y groff



