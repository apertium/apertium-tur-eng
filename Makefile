all:
	cp ../../languages/apertium-tur/tur.automorf.bin tur-eng.automorf.bin
	cp ../../languages/apertium-tur/tur.rlx.bin tur-eng.rlx.bin
	lt-comp lr apertium-tur-eng.tur-eng.dix tur-eng.autobil.bin
	lrx-comp apertium-tur-eng.tur-eng.lrx tur-eng.autolex.bin
	rtx-comp -l apertium-tur-eng.tur-eng.ltx apertium-tur-eng.tur-eng.rtx tur-eng.rtx.bin
	apertium-gen-modes modes.xml

clean:
	rm *.bin
