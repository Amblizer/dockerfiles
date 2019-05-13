FROM debian:latest

# numpy also installed
RUN apt-get update \
    && apt-get install -y \
        python \
        python3-pip \
    && pip3 install \
        matplotlib \
        jupyter

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]

EXPOSE 8888