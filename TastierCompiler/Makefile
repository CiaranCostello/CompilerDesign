CSHARPCOMPILER = dmcs

all:
	mkdir -p generated
	mono bin/coco.exe -frames src/frames -o generated -namespace Tastier src/grammar/Tastier.ATG
	$(CSHARPCOMPILER) src/Main.cs generated/*.cs -out:bin/tcc.exe

clean:
	rm -rf generated/
