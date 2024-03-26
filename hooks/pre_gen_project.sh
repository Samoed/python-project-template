#!/bin/sh
git init
pdm init
pdm install
pdm add mypy ruff -dG lint
