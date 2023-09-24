# Default rule
.PHONY: default
default: build


# build the usual development packages
.PHONY: build
build:
	dune build

.PHONY: create-switch
create-switch: ## Create opam switch
	opam switch create . 5.1.0 -y --deps-only

# Install dependencies needed during development.
.PHONY : dev-deps
dev-deps :
	opam install . --deps-only --yes

# Run the app
.PHONY : run
run :
	dune exec ./bin/main.exe