#!/bin/sh
poetry init
poetry add flake8 black isort mypy pyupgrade -G dev
