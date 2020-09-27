export PROJECTNAME=$(shell basename "$(PWD)")

.SILENT: ;               # no need for @

process: ## Here is the process
	echo "make new -- to add a new entry"
	echo "make serve -- to check it locally"
	echo "make generate stage -- to push it live"
	echo "make commit-all -- to commit the changes"

clean: ## Clean Docs folder
	rm -rf docs

generate: clean ## Generator Documentation
	HUGO_ENV="production" hugo --gc --destination docs || exit 1

commit-all: ## Push generated documentation to Github
	git add -A
	git commit -m "Updated docs"
	git push origin master

database: ## Re-build database
	./importer/all_commands.sh

screenshots: ## Re-download screenshots from websites
	./importer/all_screenshots.sh

resize: ## Resize screenshots
	./importer/resize-screenshots.sh

content: ## Generate markdown from database
	./importer/all_md_generator.sh

deps: ## Re-install dependencies
	./venv/bin/pip install -r importer/requirements.txt

index: ## Generate index
	npm run index

serve: index ## Serve site locally
	open http://localhost:1313
	hugo server -D --disableFastRender

new: ## Hugo command to create a new entry
	echo "hugo new (posts|notes|projects)/next-title.md"

stage: index ## Deploys to Netlify staging environment
	netlify deploy --dir=docs

.PHONY: help
.DEFAULT_GOAL := help

help: Makefile
	echo
	echo " Choose a command run in "$(PROJECTNAME)":"
	echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	echo