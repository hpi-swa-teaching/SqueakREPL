evaluation
evaluate: aString
	"Evaluate the code in aString and return the result. If an error occurs nil will
	be returned."

	^ self evaluate: aString onError: [ :error | ^ nil ]