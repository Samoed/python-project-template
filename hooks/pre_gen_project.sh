#!/bin/sh
git init
pre-commit install
pdm init
pdm install
pdm add mypy ruff -G dev
