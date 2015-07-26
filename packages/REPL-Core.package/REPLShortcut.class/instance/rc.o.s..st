class
rc: aContext o: anObject s: aSymbol 
	"Rename the class anObject (an instance of Object) according to
	aSymbol (an instance of Symbol)."
	anObject rename: aSymbol asString