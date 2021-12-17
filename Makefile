all: ## Run all the install and setup scripts
	chmod +x scripts/install
	chmod +x scripts/setup
	./scripts/install
	./scripts/setup