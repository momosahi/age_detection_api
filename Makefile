test:
	python -m pytest tests/test_predict.py

env:
	pipenv install --dev
	pipenv shell

env_out:
	deactivate
