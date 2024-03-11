#!/bin/sh
cat linters_config.toml >> pyproject.toml
rm linters_config.toml
mv src_/* src/
rm -rf src_/
pre-commit install --install-hooks
