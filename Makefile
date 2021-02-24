all:
	./bitmapfont2otb/bitmapfont2otb.py SchumacherClean-Regular.sfd clR8x8.otb

.PHONY: specimen
specimen:
	hb-view --font-size=8 --text-file=specimen.txt -o specimen.png clR8x8.otb
	hb-view --font-size=100 --text-file=specimen.txt -o specimen100.png clR8x8.otb
