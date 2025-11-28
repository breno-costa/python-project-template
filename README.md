# Python Project Template

A modern Python project template with best practices baked in.

## Features

- 🐍 **Python 3.12+** support
- 📦 **uv** for fast dependency management
- 🧪 **pytest** for testing
- 🔍 **Ruff** for linting and formatting
- 🔒 **pre-commit** hooks for code quality
- 🕵️ **detect-secrets** to prevent credential leaks
- ⚡ **just** command runner for automation
- 📋 **Copier** template support

## Requirements

- [Python 3.12+](https://www.python.org/)
- [uv](https://docs.astral.sh/uv/)
- [just](https://just.systems/)

## Quick Start

To generate a new project using this template, you need to install copier as follows:

```
brew install copier
```

Then create a new project:

```bash
copier copy gh:breno.costa/python-project-template my-project
cd my-project
```

## Project Structure

```
.
├── src/
│   └── my_package/
│       ├── __init__.py
│       └── main.py
├── tests/
│   └── test_main.py
├── .gitignore
├── .pre-commit-config.yaml
├── .secrets.baseline
├── justfile
├── pyproject.toml
└── README.md
```

## Available Commands

Run `just` to see all available commands:

| Command | Description |
|---------|-------------|
| `just help` | Show all available commands |
| `just sync` | Sync dependencies from pyproject.toml |
| `just update` | Update all dependencies |
| `just test` | Run tests with pytest |
| `just lint` | Run Ruff linter |
| `just lint-fix` | Auto-fix linting issues |
| `just pre-commit-install` | Install pre-commit hooks |
| `just pre-commit` | Run pre-commit on all files |
| `just clean` | Remove cache files |
****
