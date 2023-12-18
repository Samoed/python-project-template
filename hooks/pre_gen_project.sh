#!/bin/sh
git init
git branch -M main
pre-commit install
pdm init
pdm install
pdm add mypy ruff -G dev
