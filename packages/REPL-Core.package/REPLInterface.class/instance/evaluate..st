evaluating
evaluate: aString 
	"Evaluate input and return as string."
	| value formattedValue |
	value := self evaluator
				evaluate: aString
				onError: [:err | 
					(err lastError isKindOf: Error)
						ifTrue: [formattedValue := (self escapeCode: '[0;31m')
										, err lastError description
										, (self escapeCode: '[0m') , String crlfcrlf , err lastError signalerContext longStack]
						ifFalse: [formattedValue := (self escapeCode: '[0;31m')
										, err lastError asString
										, (self escapeCode: '[0m')].
					^ formattedValue].
	value
		ifNil: [^ nil].
	(value isString and: value isSymbol not)
		ifTrue: [^ value].
	^ value printString