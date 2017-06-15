BASE=buildbotics-enclosure-$(shell date +%Y%m%d)
ZIP=$(BASE).zip
PDF=$(BASE).pdf
FILES=front back top
DXFS=$(patsubst %,%.dxf,$(FILES))
SVGS=$(patsubst %,%.svg,$(FILES))
PDFS=$(patsubst %,%.pdf,$(FILES))
ZIPFILES=$(PDF) $(SVGS) $(DXFS)

all: $(ZIP)

pdf: $(PDF)

zip: $(ZIP)

%.pdf: %.svg
	inkscape -T -C -A $@ $<

$(PDF): $(PDFS)
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$@ $(PDFS)

$(ZIP): $(ZIPFILES)
	zip $@ $(ZIPFILES)

view: $(PDF)
	evince $<

tidy:
	rm -f *~

clean: tidy
	rm -f $(PDF) $(ZIP) $(PDFS)
