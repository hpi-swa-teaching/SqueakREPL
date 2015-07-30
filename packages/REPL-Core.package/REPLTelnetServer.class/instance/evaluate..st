evaluating
evaluate: aString
	"Evaluate input and return as string."

	| value formattedValue |
	value := self evaluator
		evaluate: aString
		onError: [ :err | 
			(err lastError isKindOf: Error)
				ifTrue: [ 
					
					formattedValue := self class colorize: err lastError description with: self class colorBad, String crlfcrlf
						, err lastError signalerContext longStack ]
				ifFalse: [ formattedValue := self class colorize: err lastError asString with: self class colorBad ].
			^ formattedValue ].
	value ifNil: [ ^ nil ].
	(value isString and: value isSymbol not)
		ifTrue: [ ^ value ].
	^ value printString