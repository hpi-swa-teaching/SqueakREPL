file
rf: aContext n: aString
	"Run the file specified by aString (an instance of String)."

	^ aContext expressionEvaluator evaluate: (StandardFileStream readOnlyFileNamed: aString) contentsOfEntireFile