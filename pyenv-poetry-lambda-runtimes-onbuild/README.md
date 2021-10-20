An onbuild variant of the simple python 3.6 slim based image that includes pyenv and poetry as well as latest minor versions for all Lambda supported Python minor versions - 3.6.5, 3.7.10, 3.8.10, 3.9.5.

You can specify Python versions to be installed using the PYTHON_VERSIONS ARG. Versions should be space-delimited.

```dockerfile
ARG PYTHON_VERSIONS="3.5.10 2.7.17"

FROM gradybarrett/pyenv-poetry-lambda-runtimes-onbuild:latest

<rest of dockerfile...>
```

All supplied versions will be set as globals in pyenv; `pyenv global $PYTHON_VERSIONS`.
