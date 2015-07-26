file
rf: aContext f: aString 
	"Run the file specified by aString (an instance of String)."
	^ aContext evaluator evaluate: (StandardFileStream readOnlyFileNamed: aString) contentsOfEntireFile