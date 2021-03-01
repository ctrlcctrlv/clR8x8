all:
	./bitmapfont2otb/bitmapfont2otb.py SchumacherClean-Regular.sfd clR8x8.otb

.PHONY: specimen
specimen:
	hb-view --font-size=8 --text-file=specimen.txt -o specimen.png clR8x8.otb
	hb-view --font-size=100 --text-file=specimen.txt -o specimen100.png clR8x8.otb

.PHONY: sfd-normalize
sfd-normalize:
	~/Workspace/sfdnormalize/sfdnormalize/__main__.py SchumacherClean-Regular.sfd SchumacherClean-Regular2.sfd
	mv SchumacherClean-Regular2.sfd SchumacherClean-Regular.sfd
