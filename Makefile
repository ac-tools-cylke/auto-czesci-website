.PHONY: dev build clean preview install check

dev:
	hugo server --disableFastRender --buildDrafts --navigateToChanged

build:
	hugo --minify

clean:
	rm -rf public resources/_gen

preview: build
	cd public && python3 -m http.server 8080

install:
	brew install hugo

check:
	hugo --printPathWarnings --printUnusedTemplates 2>&1
