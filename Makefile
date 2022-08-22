SHELL=/bin/bash

tree:
	tree -I "__pycache__|mealenv|content"

freeze:
	@# freezed all dependency versions into requirements.txt
	@if [ -z "$(VIRTUAL_ENV)" ]; then \
			echo "not logged into venv" ; \
	else \
			pip3 freeze > requirements.txt; \
			echo "freezed all dependencies"; \
	fi

copy:
	@# Copy all ingredients 
	rsync -r --delete ./content/ingredients/ ~/.config/mealplan/ingredients/ # copy all ingredients
	rsync -r --delete ./content/recipes/ ~/.config/mealplan/recipes/ # copy all recipes
	@echo "Copy Done !"
	@date


server:
	@# deploy server 

build:
	@# TODO: create venv, install all packages to venv

install: build
	@# TODO: make install to build and this project 
	@# TODO: add symlink to .local/bin
	@# TODO: copy files of ingredients location to .config/mealplan/ingredients/ if not there
	@# TODO: copy files of recipes location to .config/mealplan/recipes/ if not there
	
