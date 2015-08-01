helper
evaluate: aString
	"Evaluate aString and check for errors."

	| result |
	result := self evaluator evaluate: aString onError: [ :ex | self fail: ex lastError asString ].
	^ result