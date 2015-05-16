parsing
isCompletedExpression: aString
	"Check whether aString (an instance of String) may be a a completed expression and answer a truth value according to it."

	| specialCharacters flattenedCharacters adjustedExpression |
	specialCharacters := self class glossaryOfSpecialCharacters.
	flattenedCharacters := specialCharacters keys , specialCharacters values.
	adjustedExpression := self filterOutSpecialCharacters: flattenedCharacters from: aString.
	^ self areSpecialCharacters: specialCharacters properlyNestedWithin: adjustedExpression