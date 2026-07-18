.PHONY: watch compile

ifeq ($(OS),Windows_NT)
    # Windows
    watch:
		@PowerShell -Command "typst watch main.typ --root ."

    compile:
		@PowerShell -Command "typst compile main.typ note/main.pdf"
else
    # WSL or Unix-like system
    watch:
		@bash -c "typst watch main.typ --root ."

    compile:
		@bash -c "typst compile main.typ note/main.pdf"
endif
