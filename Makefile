# vim: noet ts=8

SRC = $(wildcard src/*.ly)
PDF = $(patsubst src/%.ly,build/%.pdf,$(SRC))

build/%.pdf: src/%.ly
	lilypond --output=build $^

.PHONY: all
all: $(PDF)

