completing
filterOutSpecialCharacters: aCollection from: aString
	"Filter out all special characters contained in aCollection from the original expression aString and answer the adjusted expression."

	^ aCollection
		inject: aString
		into: [ :adjustedExpression :eachSpecialCharacter | adjustedExpression copyReplaceTokens: '$' , eachSpecialCharacter with: '' ]