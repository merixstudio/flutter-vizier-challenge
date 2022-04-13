.DEFAULT_GOAL := help

fvm_rebuild_models: ## Rebuilds all auto generated Dart files
	fvm flutter pub run build_runner build --delete-conflicting-outputs

rebuild_models: ## Rebuilds all auto generated Dart files
	flutter pub run build_runner build --delete-conflicting-outputs

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'