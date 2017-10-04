setup:
	python3 -m venv ~/.pragai-aws

install:
	pip install -r requirements.txt

test: 
	PYTHONPATH=. && pytest -vv --cov=paws tests/*.py
	PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb
	cov=pli


lint: 
	pylint --disable=R,C paws

all: 
	setup install test lint

