FROM ubuntu:14.04
# INSTRUCTION arguments
    # Convention is for INSTRUCTIONS to be UPPERCASE to distinguish 
        # them from arguments more easily.
    # INSTRUCTIONS are runs in order
    # A Dockerfile must start with a `FROM` instruction, specifies 
        # the Base Image, can be one or more

RUN sudo apt-get update \
    && sudo apt-get install -y software-properties-common \
    && sudo apt-add-repository ppa:ondrej/php \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apache2 \
        mysql-server \
        php7.0 \
        php7.0-bcmath \
        php7.0-mcrypt

COPY start-script.sh /root/

RUN chmod +x /root/start-script.sh

CMD /root/start-script.sh