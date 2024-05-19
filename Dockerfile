FROM debian:bullseye

RUN apt-get update && apt-get install build-essential git make manpages-dev -y 
RUN git clone https://github.com/y-chahbi/TerminalGame.git

COPY tools/TerminalGameFolder /usr/TerminalGame


COPY tools/script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ./usr/local/bin/script.sh
