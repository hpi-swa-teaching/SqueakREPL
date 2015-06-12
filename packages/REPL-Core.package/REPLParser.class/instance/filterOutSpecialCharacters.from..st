parsing
filterOutSpecialCharacters: aCollection from: aString
	"Filter out all special characters contained in aCollection (an instance of Collection) from the original expression aString (an instance of String) and answer the adjusted expression (an instance of String)."

	^ aCollection inject: aString into:
		[ :adjustedExpression :eachSpecialCharacter |
			adjustedExpression copyReplaceTokens: '$' , eachSpecialCharacter with: '' ]