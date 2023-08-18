APP_CONTAINER		= gateway
DOCKER_DIR			= ".docker"
DOCKER_COMPOSE_EXE	= $(if $(shell which docker-compose),docker-compose,docker compose)
DC					= $(DOCKER_COMPOSE_EXE) --project-directory=$(DOCKER_DIR) --file="$(DOCKER_DIR)/docker-compose.yaml"

.DEFAULT_GOAL      = help

### COMMON
.PHONY: help
help:
	@echo -e '\033[1mmake [TARGET] \033[0m'
	@grep -E '(^[a-zA-Z0-9_-]+:.*?##.*$$)|(^##)' Makefile | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

.PHONY: build
build: ## Build image
	$(DC) build

.PHONY: up
up: ## Start all services
	$(DC) up -d

.PHONY: down
down: ## Stop all services
	@$(DC) down

.PHONY: console
console: ## Enter app container console
	@$(DC) exec -it $(APP_CONTAINER) sh
