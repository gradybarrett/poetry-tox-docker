FROM python:3.6-slim

ENV HOME=/usr/local

RUN update-ca-certificates && apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    curl \
    git \
    make \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxmlsec1-dev \
    llvm \
    wget \
    tk-dev \
    xz-utils \
    zlib1g-dev \
    && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python \
    && curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
    && rm -rf /var/lib/apt/lists/*

ENV PATH "$HOME/.local/bin:$HOME/.pyenv/bin:$PATH"

CMD ["/bin/sh"]
