evaluating
evaluate: aString
	"Evaluate input and return as string."

	^ (self evaluator evaluate: aString onError: [:err | ^err lastError asString  ]) asString 