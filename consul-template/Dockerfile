FROM gliderlabs/alpine

ENV DOCKER_HOST unix:///var/run/docker.sock
RUN apk add --update docker && docker -v

ENV CONSUL_TEMPLATE_VERSION 0.16.0

ADD https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip /tmp/

RUN cd /tmp && \
    unzip consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip && \
    mv consul-template /bin/consul-template && \
    rm -rf /tmp

ENTRYPOINT ["/bin/consul-template"]