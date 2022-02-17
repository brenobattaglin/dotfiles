all: ## Run all the install and setup scripts
	chmod +x scripts/install
	chmod +x scripts/setup
	./scripts/install
	./scripts/setup

install_all:
	chmod +x scripts/install
	./scripts/install

setup_all:
	chmod +x scripts/setup
	./scripts/setup
