init:
	# python3 -m venv ./venv
	# source venv/bin/activate
	python3 -m pip install poetry
	poetry install --no-root

test:
	poetry run pytest -sv homework/tests

test_1:
	poetry run pytest -sv homework/tests/test_task_1.py

test_2:
	poetry run pytest -sv homework/tests/test_task_2.py

test_3:
	poetry run pytest -sv homework/tests/test_task_3.py

test_4:
	poetry run pytest -sv homework/tests/test_task_4.py

test_5:
	poetry run pytest -sv homework/tests/test_task_5.py

test_6:
	poetry run pytest -sv homework/tests/test_task_6.py

test_7:
	poetry run pytest -sv homework/tests/test_task71.py