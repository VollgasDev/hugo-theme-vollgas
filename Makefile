# hugo-theme-vollgas makefile
#
# Setup basic hugo theme
#
# To-Do:
#   * none

project_name := hugo-theme-vollgas

# Hugo variables
hugo_output_dir := public
WORKING_DIRS := ${hugo_output_dir} tmp

.PHONY: build
build: lint prettier

.PHONY: init
init: ${WORKING_DIRS}

.PHONY: prettier
prettier:
	prettier --write .

.PHONY: dev
dev:
	brew install --quiet hugo prettier yamllint

.PHONY: lint
lint:
	yamllint ./

${WORKING_DIRS}:
	mkdir $@

.PHONY: clean
clean:
	rm -rf ${WORKING_DIRS}
