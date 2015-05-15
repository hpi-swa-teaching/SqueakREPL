parsing
areSpecialCharacters: aDictionary properlyNestedWithin: aString
	"Check whether each left special character contained in aDictionary (an instance of Dictionary) occurs as frequent as its right counterpart within the expression aString (an instance of String) and answer a truth value (an instance of Boolean) according to it."

	| typedTokens |
	typedTokens := (Scanner new typedScanTokens: aString) asBag.
	aDictionary keysAndValuesDo:
		[ :eachLeftSpecialCharacter :eachRightSpecialCharacter |
			(typedTokens occurrencesOf: eachLeftSpecialCharacter)
				= (typedTokens occurrencesOf: eachRightSpecialCharacter)
					ifFalse: [ ^ false ] ].
	^ true