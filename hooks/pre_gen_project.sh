#!/bin/sh
git init
pre-commit install
poetry init
poetry install
poetry add mypy ruff -G dev
