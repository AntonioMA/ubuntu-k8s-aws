FROM ubuntu:24.04

RUN apt-get update \
    && apt-get install -y \
        curl \
        unzip \
        vim \
        less \
        jq \
        postgresql-client \
        groff \
        redis \
        mysql-client \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/awscliv2.zip" \
    && unzip /awscliv2.zip \
    && /aws/install \
    && rm -rf /aws /awscliv2.zip \
    && curl -LO "https://dl.k8s.io/release/v1.29.0/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl "/usr/local/bin/kubectl" \
    && apt-get clean \
    && rm kubectl \
    && rm -rf /var/lib/apt/lists/*

