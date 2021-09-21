# Frontend to dune.

.PHONY: default build install uninstall test clean run
.IGNORE: fmt

default: build

run:
	dune exec ./bin/main.exe

build:
	dune build

test:
	dune runtest -f

install:
	dune install

uninstall:
	dune uninstall

clean:
	dune clean
