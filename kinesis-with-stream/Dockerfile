FROM dlsniper/kinesalite:latest

EXPOSE 4567

RUN apt-get -qq update && apt-get -qq install -y curl \
    && apt-get install -yq awscli

ENV STREAM_NAME=my_stream

RUN aws configure set region local && aws configure set aws_access_key_id default_access_key && aws configure set aws_secret_access_key default_secret_key

COPY ./init.sh /usr/local/init.sh
RUN chmod +x /usr/local/init.sh

ENTRYPOINT /usr/local/init.sh ${STREAM_NAME}

