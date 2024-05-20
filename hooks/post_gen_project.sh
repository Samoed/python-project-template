#!/bin/sh
echo "" >> pyproject.toml
cat linters_config.toml >> pyproject.toml
rm linters_config.toml
pre-commit install --install-hooks

GIT_REPO="{{ cookiecutter.git_repo }}"
PROJECT_SLUG="{{ cookiecutter.project_slug }}"
if [ -n "$GIT_REPO" ]; then
  echo "Initializing Git repository and setting remote origin to $GIT_REPO"
  git remote add origin "$GIT_REPO"
else
  echo "No Git repository URL provided, skipping Git setup"
fi
mv logger.py src/${PROJECT_SLUG}
