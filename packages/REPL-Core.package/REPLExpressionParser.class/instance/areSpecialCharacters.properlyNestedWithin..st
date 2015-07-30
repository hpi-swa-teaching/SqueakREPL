completing
areSpecialCharacters: aDictionary properlyNestedWithin: aString
	"Check whether each left special character contained in aDictionary occurs as frequent as its right counterpart within the expression aString and answer a truth value according to it."

	| typedTokens |
	typedTokens := [ (Scanner new typedScanTokens: aString) asBag ]
		on: Exception
		do: [ :exception | ^ self handleCompletingException: exception ].
	aDictionary
		keysAndValuesDo: [ :eachLeftSpecialCharacter :eachRightSpecialCharacter | 
			(typedTokens occurrencesOf: eachLeftSpecialCharacter) = (typedTokens occurrencesOf: eachRightSpecialCharacter)
				ifFalse: [ ^ false ] ].
	^ true