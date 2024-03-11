.DEFAULT_GOAL := all
DIRS = src/
pdm = pdm run
isort = isort
black = black
mypy = mypy
flake8  = flake8
pyupgrade = pyupgrade --py311-plus


.PHONY: format
format:
	pre-commit run
	$(pdm) ruff format $(DIRS)
	$(pdm) ruff check $(DIRS)
	$(pdm) mypy $(DIRS)

.PHONY: export-dependencies
export-dependencies:
	pdm export -f requirements --output requirements/requirements.txt --prod
	pdm export -f requirements --output requirements/requirements-dev.txt --dev


.PHONY: database
database:
	docker compose up database -d

.PHONY: test
test:
	$(pdm) pytest --cov=app --cov-report=html

.PHONY: migrate
migrate:
	@read -p "Enter migration message: " message; \
	$(pdm) alembic revision --autogenerate -m "$$message"

.PHONY: downgrade
downgrade:
	$(pdm) alembic downgrade -1

.PHONY: upgrade
upgrade:
	$(pdm) alembic upgrade +1

.PHONY: upgrade-offline
upgrade-offline:
	$(pdm) alembic upgrade head --sql

.PHONY: all
all: format export-dependencies
