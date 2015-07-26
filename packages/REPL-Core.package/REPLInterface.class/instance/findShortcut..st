evaluating
findShortcut: aString 
	"Parses the code in aString to find a REPLShortcut."
	Transcript
		show: (self evaluator evaluate: aString)