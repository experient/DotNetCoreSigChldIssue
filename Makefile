test: bin/Debug/netcoreapp2.0/publish/SigChldRepro.dll
	perl -w test.pl

bin/Debug/netcoreapp2.0/publish/SigChldRepro.dll: *
	dotnet publish

clean:
	rm -rf bin obj
