# hugo-theme-vollgas makefile
#
# Vollgas Theme Example Site
#
# To-Do:
#   * none

project_name := hugo-theme-vollgas

# Hugo variables
hugo_output_dir := public
WORKING_DIRS := ${hugo_output_dir} tmp

.PHONY: init
init: ${WORKING_DIRS}

.PHONY: build
build: lint prettier
	hugo -D

.PHONY: prettier
prettier:
	prettier --write .

.PHONY: dev
dev:
	brew install --quiet awscli hugo prettier yamllint
	npm install

.PHONY: lint
lint:
	yamllint ./

${WORKING_DIRS}:
	mkdir $@

.PHONY: clean
clean:
	rm -rf ${WORKING_DIRS}
