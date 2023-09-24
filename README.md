Starter project with OCaml + Reason

Install the development dependencies
```sh
make dev-deps
```

To build the project:
```sh
dune build
```

And to run it:
```sh
dune exec ./bin/main.exe
```

Nice to have packages for development:
- ocamlformat
- ocaml-lsp-server
- utop
- reason (To enable formatting reason files with refmt)
