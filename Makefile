
install:
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

	pip install --upgrade pip
	pip install -r requirements.txt

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint