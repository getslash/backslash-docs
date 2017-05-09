default: doc

env: .env/.up-to-date

.env/.up-to-date: requirements.txt Makefile
	python -m virtualenv .env
	.env/bin/pip install -r requirements.txt
	touch .env/.up-to-date

doc: env
	.env/bin/sphinx-build docs -E build

.PHONY: doc
