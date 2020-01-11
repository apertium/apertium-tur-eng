all:
	cp ../../languages/apertium-tur/tur.automorf.bin tur-eng.automorf.bin
	cp ../../languages/apertium-tur/tur.rlx.bin tur-eng.rlx.bin
	lt-comp lr apertium-tur-eng.tur-eng.dix tur-eng.autobil.bin
	rtx-comp apertium-tur-eng.tur-eng.rtx tur-eng.rtx.bin
	apertium-gen-modes modes.xml

clean:
	rm *.bin
