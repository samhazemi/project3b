setup:
	python3 -m venv ~/.reml

install:
	echo "UPGRADE pip install\n"
	pip install -r requirements.txt --upgrade

test:
	#PYTHONPATH=. && pytest -vv --cov=paws --cov=spot-price-ml tests/*.py
	PYTHONPATH=. && py.test --nbval-lax notebooks/*.ipynb

lint:
	pylint --disable=R,C reml

all: install lint test
