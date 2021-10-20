FROM pyenv-poetry:1.0

ARG PYTHON_VERSIONS="3.6.5 3.7.10 3.8.10 3.9.5"

RUN for version in $PYTHON_VERSIONS; do pyenv install $version; done && pyenv global $PYTHON_VERSIONS

ENTRYPOINT ["/bin/sh", "-l"]
CMD []