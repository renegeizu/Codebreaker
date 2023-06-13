.PHONY: init
init: rm copy-env build up
.PHONY: copy-env
copy-env:
	cp .env .env.dist
.PHONY: build
build:
	docker-compose build --no-cache
.PHONY: rm
rm:
	docker-compose stop
	docker-compose rm -v -f
.PHONY: stop
stop:
	docker-compose stop
.PHONY: up
up:
	docker-compose up -d
.PHONY: bash
bash:
	docker-compose run app bash