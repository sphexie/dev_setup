FROM debian:bookworm-slim

# COPY --from=docker:latest /usr/local/bin/docker /usr/local/bin/

WORKDIR /setup

COPY scripts/* .
COPY rc/* /root

RUN ./01_setup.sh
RUN ./02_zsh.sh
RUN ./03_tmux.sh
RUN ./04_vim.sh
RUN ./05_docker.sh

RUN  echo 'root:password' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["tail","-f","/dev/null"]
