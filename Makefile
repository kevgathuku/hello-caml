# Default rule
.PHONY: default
default: build

# build the usual development packages
.PHONY: build
build:
	dune build

# Install dependencies needed during development.
.PHONY : dev-deps
dev-deps :
	opam install . --deps-only --yes