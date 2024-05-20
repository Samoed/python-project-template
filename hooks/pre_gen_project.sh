#!/bin/sh
git init
pdm init -n
pdm install
pdm add mypy ruff -dG lint
