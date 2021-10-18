ARG pyversions="3.6.5"

FROM pyenv-poetry-lambda-runtimes:1.0

COPY . /opt/lib

WORKDIR /opt/lib

# Remove version file since it will throw off pyenv multi-version setup
RUN rm .python-version
RUN ls -a

RUN poetry install
RUN poetry run tox
