FROM pyenv-poetry:1.0

ARG pyversions="3.6.5 3.7.10 3.8.10 3.9.5"

RUN for version in $pyversions; do pyenv install $version; done

RUN pyenv global $pyversions

# COPY . /opt/lib

# WORKDIR /opt/lib

# RUN poetry --version