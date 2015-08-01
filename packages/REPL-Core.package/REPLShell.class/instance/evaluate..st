evaluating
evaluate: aString
	"Evaluate aString and answer resuting value."

	| value |
	value := self evaluator
		evaluate: aString
		onError: [ :err | 
			(err lastError isKindOf: Error)
				ifTrue: [ self interface printError: err lastError description , String crlfcrlf , err lastError signalerContext longStack ]
				ifFalse: [ self interface printError: err lastError asString ].
			^ nil ].
	value ifNil: [ ^ nil ].
	(value isString and: value isSymbol not)
		ifTrue: [ ^ value ].
	^ value printString