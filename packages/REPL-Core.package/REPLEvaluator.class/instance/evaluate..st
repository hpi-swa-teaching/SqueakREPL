evaluation
evaluate: aString 
	"Evaluates the aString and returns the result. If an error occurs nil will
	be returned."
	^ self
		evaluate: aString
		onError: [:ntfy | ^ nil]