.DEFAULT_GOAL = build

build:
	dune build --release @plugin

clean:
	dune clean
