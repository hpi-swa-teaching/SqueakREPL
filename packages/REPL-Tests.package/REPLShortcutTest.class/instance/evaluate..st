running
evaluate: aString

	^ self evaluator evaluate: aString onError: [ :ex | Transcript show: 'Shortcut failed: ', aString; cr. self fail ].