all: ## Run all the install and setup scripts
	chmod +x scripts/install
	chmod +x scripts/setup
	./scripts/install
	source ~/.zshrc
	./scripts/setup

install_all:
	chmod +x scripts/install
	source ~/.zshrc
	./scripts/install

setup_all:
	chmod +x scripts/setup
	./scripts/setup
