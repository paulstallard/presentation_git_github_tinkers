.PHONEY: default to_pi pdf pdf-builds clean veryclean

DECKTAPE=decktape reveal --size 1244x700 \
	--pdf-author "Paul Stallard" \
	--pdf-title "Git and GitHub"

default:
	quarto render index.qmd
	check-classes
	cp img/betaplus.ico _output/favicon.ico

to_pi:
	rsync -avv --chmod=F644,D755 _output/ huxley.local:html/other/tinkers_git

pdf:
	$(DECKTAPE) _output/index.html output.pdf
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -sOutputFile=output-small.pdf output.pdf

pdf-builds:
	$(DECKTAPE) --fragments _output/index.html output-builds.pdf
	gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -sOutputFile=output-builds-small.pdf output-builds.pdf

clean:
	rm -rf _output/*

