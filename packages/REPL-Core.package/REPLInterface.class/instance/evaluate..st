evaluation
evaluate: aString
	"Evaluate input and return as string."

	^ (self evaluator evaluate: aString) asString 