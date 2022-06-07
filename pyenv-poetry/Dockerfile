FROM python:3.7-slim

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
    && curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
    && curl -sSL https://install.python-poetry.org | python - --preview \
    && rm -rf /var/lib/apt/lists/*

ENV PATH "$HOME/.local/bin:$HOME/.pyenv/bin:$PATH"

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

CMD ["/bin/sh"]
