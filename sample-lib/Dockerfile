FROM gradybarrett/pyenv-poetry-lambda-runtimes:2.1

COPY . /opt/package

WORKDIR /opt/package

# RUN groupadd -g 999 libuser && \
#     useradd -r -u 999 -g libuser libuser
# USER libuser

COPY .python-version .python-version

# Remove version file since it will throw off pyenv multi-version setup
RUN poetry install

ENTRYPOINT ["poetry", "run", "tox"]
CMD []
