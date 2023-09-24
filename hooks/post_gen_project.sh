#!/bin/sh
echo $PWD
ls -l
# cat linters_config.toml >> pyproject.toml
# rm linters_config.toml
rm -f {{cookiecutter.project_slug}}
