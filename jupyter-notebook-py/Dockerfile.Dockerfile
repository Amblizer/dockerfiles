FROM debian:latest

# numpy also installed
RUN apt-get update \
    && apt-get install -y \
        python \
        python3-pip

RUN pip3 install \
        matplotlib \
        jupyter \
        jupyter_contrib_nbextensions \
    && pip3 install --upgrade six \
    && jupyter contrib nbextension install --user

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]

EXPOSE 8888