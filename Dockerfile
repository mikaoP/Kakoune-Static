FROM alpine:latest
RUN apk update
RUN apk add gcc g++ git make ncurses ncurses-dev ncurses-static
RUN git clone https://github.com/mawww/kakoune.git && \
    cd kakoune/src && \
    static=yes make
