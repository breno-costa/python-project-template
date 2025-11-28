# Default recipe to display help
help:
    @just --list

# Clean up cache files
clean:
    find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
    find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
    find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
    find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
    find . -type f -name "*.pyc" -delete 2>/dev/null || true

# Sync dependencies from pyproject.toml
sync:
    uv sync

# Install pre-commit hooks
pre-commit-install:
    uv run pre-commit install

# Run pre-commit on all files
pre-commit:
    uv run pre-commit run --all-files

# Update all dependencies
update:
    uv lock --upgrade
    uv sync

# Run tests with pytest
test *ARGS:
    uv run pytest {{ARGS}}

# Run linter (ruff)
lint:
    uv run ruff check .

# Fix linting issues
lint-fix:
    uv run ruff check --fix .
