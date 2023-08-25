version=0.2.1

local:
	mkdir -p ~/.local/share/typst/packages/local/glossarium/${version}
	cp -r * ~/.local/share/typst/packages/local/glossarium/${version}

all:
	typst --root . compile example/example.typ 

watch:
	typst --root . watch example/example.typ 

fmt:
	find -name "**.typ" -exec typstfmt {} \;
