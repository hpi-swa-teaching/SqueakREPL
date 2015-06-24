evaluating
evaluate: aString
	"Evaluate input and return as string."

	| value |
	value := (self evaluator evaluate: aString onError: [:err | ^err lastError asString  ]).

	value ifNil: [ ^nil ].
	^value asString.