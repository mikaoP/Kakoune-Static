FROM alpine:edge
RUN apk update
RUN apk add gcc g++ git make ncurses ncurses-dev ncurses-static
RUN apk add automake autoconf libtool
RUN git clone https://github.com/mawww/kakoune.git && \
    cd kakoune/src && \
    static=yes make -j2
RUN git clone https://github.com/universal-ctags/ctags.git && \
    cd ctags && \
    ./autogen.sh && \
    mkdir build && cd build && \
    ../configure --enable-static && \
    make -j2

