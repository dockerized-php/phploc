build: build-latest

test: build test-latest

build-latest:
	docker build -t dockerized-php/phploc:latest .

test-latest:
	@echo "Test latest"
	@docker run --rm dockerized-php/phploc:latest --help
