build: build-latest

test: build test-latest

build-latest:
	docker build -t dockerizedphp/phploc:latest .

test-latest:
	@echo "Test latest"
	@docker run --rm dockerizedphp/phploc:latest --help
