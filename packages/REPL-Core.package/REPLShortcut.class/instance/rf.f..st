file
rf: aContext f: aString
	"Run the file specified by aString (an instance of String)."

	REPLEvaluator new evaluate: (StandardFileStream readOnlyFileNamed: aString) contentsOfEntireFile