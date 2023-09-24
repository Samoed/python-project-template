#!/bin/sh
cat linters_config.toml >> pyproject.toml
rm linters_config.toml
