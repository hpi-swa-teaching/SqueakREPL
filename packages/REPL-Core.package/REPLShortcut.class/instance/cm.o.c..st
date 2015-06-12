method
cm: aContext o: anObject c: aString
	"Create a method in anObject with the code in aString."

	anObject compile: aString.