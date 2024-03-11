#!/bin/sh
git init
pdm init --backend pdm-backend
pdm install
pdm add mypy ruff -dG lint
