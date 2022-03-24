FROM archlinux

RUN pacman -Syu --noconfirm \
    base-devel \
    git \
    texlive-core \
    texlive-latexextra \
    texlive-bibtexextra \
    texlive-science \
    biber \
    python-pygments

ARG USER=developer
RUN useradd --create-home --shell /bin/bash ${USER}

USER ${USER}
WORKDIR /home/${USER}
