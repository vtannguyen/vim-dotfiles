# default recipe to display help information
[private]
default:
    @just --list

# Setup virtual environment
[private]
venv:
    @[ -d .venv ] || python3 -m venv .venv

# Run tests
test: venv
    .venv/bin/pytest --cov

# Install requirements
install: venv
    .venv/bin/pip install -r dev-requirements.txt

# Generate hashed requirement files
requirements: venv
    .venv/bin/pip install pip-tools
    .venv/bin/pip-compile --generate-hashes requirements.in
    .venv/bin/pip-compile --generate-hashes dev-requirements.in

# Tidy up local environment
clean:
    find . -name \*.pyc -delete
    find . -name __pycache__ -delete
    find . -name \*.swp -delete
    find . -type f -name "*.sw[klmnop]" -delete
