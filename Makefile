start-dev:
	uvicorn app.main:app --reload

start:
	uvicorn app.main:app

setup:
	pip install -r requirements.txt

update:
	pip freeze > requirements.txt

start-docker:
	docker-compose up --build 

psql-up:
	docker-compose up -d --build --force-recreate --remove-orphans postgres_db