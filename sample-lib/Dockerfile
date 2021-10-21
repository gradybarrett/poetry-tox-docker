FROM gradybarrett/pyenv-poetry-lambda-runtimes:latest

COPY . /opt/package

WORKDIR /opt/package

# RUN groupadd -g 999 libuser && \
#     useradd -r -u 999 -g libuser libuser
# USER libuser

# Remove version file since it will throw off pyenv multi-version setup
RUN rm .python-version && poetry install

ENTRYPOINT ["poetry", "run", "tox"]
CMD []
