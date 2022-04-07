ARG ARCH=amd64
FROM archlinux:latest

WORKDIR /karch

# Update the repositories
RUN	 pacman -Syyuu --disable-download-timeout --noconfirm

# Install base-devel
RUN	 pacman -S --disable-download-timeout --noconfirm base-devel nasm python3 vim

RUN pacman -S --noconfirm ghc 

ENV LANG=en_US.UTF-8

COPY ./*.hs /karch/

CMD ["/bin/bash"]