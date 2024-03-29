update-pip:
	@pip install --upgrade pip

install: update-pip requirements.txt
	@pip install -r requirements.txt

install-dev: requirements-dev.txt
	@pip install -r requirements-dev.txt

run-locally:
	@INPUT_CODEDIRECTORY=src INPUT_TESTDIRECTORY=tests python3 main.py

build:
	@sudo docker build -t twyle/oryks-code-coverage:latest .

run:
	@sudo docker run --env INPUT_CODEDIRECTORY=src/ --env INPUT_TESTDIRECTORY=tests/ ${imageid}

images:
	@sudo docker images
