running
evaluate: aString

	^ self evaluator evaluate: aString onError: [ :ex | self fail ].