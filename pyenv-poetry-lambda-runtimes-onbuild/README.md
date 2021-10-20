An onbuild variant of the simple python 3.6 slim based image that includes pyenv and poetry as well as latest minor versions for all Lambda supported Python minor versions - 3.6.5, 3.7.10, 3.8.10, 3.9.5.

You can specify Python versions to be installed using the PYTHON_VERSIONS_DEFAULT ARG. Versions should be space-delimited.

```dockerfile
ARG PYTHON_VERSIONS_DEFAULT="3.5.10 2.7.17"

FROM gradybarrett/pyenv-poetry-lambda-runtimes-onbuild:latest

<rest of dockerfile...>
```

All supplied versions will be set as globals in pyenv; `pyenv global $PYTHON_VERSIONS`. If for some reason you're installing multiple patch versions for a given minor, then you can use the PYTHON_GLOBAL_VERSIONS_DEFAULT ARG to specify which versions should become globals.

```dockerfile
ARG PYTHON_GLOBAL_VERSIONS_DEFAULT="3.5.9 2.7.17"
ARG PYTHON_VERSIONS_DEFAULT="3.5.10 ${PYTHON_GLOBAL_VERSIONS_DEFAULT}"

FROM gradybarrett/pyenv-poetry-lambda-runtimes-onbuild:latest

<rest of dockerfile...>
```
