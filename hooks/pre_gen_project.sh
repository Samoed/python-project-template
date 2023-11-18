#!/bin/sh
git init
pre-commit install
poetry init
poetry add mypy ruff -G dev
