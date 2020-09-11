xml2rfc ?= xml2rfc

drafts := draft-ietf-dots-rfc8782-bis.txt
xml := $(drafts:.txt=.xml)

%.txt: %.xml
	$(xml2rfc) $(patsubst %.txt,%.xml, $@) > $@
	//$(xml2rfc) $< $@

%.html: %.xml
	$(xml2rfc) --html $< $@


all: $(drafts)
