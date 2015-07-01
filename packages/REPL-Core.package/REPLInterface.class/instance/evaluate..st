evaluating
evaluate: aString
	"Evaluate input and return as string."

	| value isError formattedValue |
	isError := false.
	value := (self evaluator evaluate: aString onError: [ :err |
		isError := true.

	formattedValue := err lastError asString.

	(isError) ifTrue: [

		formattedValue := (self escapeCode: '[0;31m'), formattedValue, (self escapeCode: '[0m').
	].

	^formattedValue.  ]).

	value ifNil: [ ^nil ].
	value isString ifTrue: [ ^value ].
	^value printString.