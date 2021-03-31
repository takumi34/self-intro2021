PROGRAM = pandoc -t revealjs -s  -c style.css -V transition=fade --self-contained input.md -o index.html  --slide-level=2

m = update

pandoc: input.md
	$(PROGRAM)

git:
	git add .
	git commit -m "$m"
	git push -u origin main
