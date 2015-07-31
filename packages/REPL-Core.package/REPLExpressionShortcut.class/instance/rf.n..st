file
rf: aContext n: aString
	"Run the file specified by aString."

	^ aContext expressionEvaluator evaluate: (StandardFileStream readOnlyFileNamed: aString) contentsOfEntireFile