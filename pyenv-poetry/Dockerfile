FROM python:3.6-slim

ENV HOME=/usr/local/lib

RUN apt-get update && apt-get install --no-install-recommends -y make git build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
    && curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python \
    && curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
    && rm -rf /var/lib/apt/lists/*

ENV PATH "$HOME/.local/bin:$HOME/.pyenv/bin:$PATH"

ENTRYPOINT ["/bin/sh", "-l"]
CMD []
