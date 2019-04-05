#
# Makefile
# Maël Valais, 2017-10-27 18:34
#
# NOTE:
# iperender is in the Ipe.app application; for example, on my mac,
# I have to add to my zshrc:
#     export PATH="$PATH:/Applications/Ipe.app/Contents/MacOS"

IPE_INPUTS=$(wildcard *.ipe)
TARGETS=$(IPE_INPUTS:.ipe=.pdf)
all: $(TARGETS)

%.pdf: %.ipe
	iperender -pdf $^ $@

clean:
	rm -Rf $(TARGETS)

# vim:ft=make
#
