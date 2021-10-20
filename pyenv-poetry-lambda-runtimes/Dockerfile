FROM pyenv-poetry:1.0

ARG PYTHON_VERSIONS="3.6.15 3.7.12 3.8.12 3.9.7"

RUN for version in $PYTHON_VERSIONS; do pyenv install $version; done && pyenv global $PYTHON_VERSIONS

ENTRYPOINT ["/bin/sh", "-l"]
CMD []