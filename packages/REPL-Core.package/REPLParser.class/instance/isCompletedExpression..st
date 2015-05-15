parsing
isCompletedExpression: aString
	"Check whether aString (an instance of String) may be a completed expression and answer a truth value (an instance of Boolean) according to it."

	| specialCharacters flattenedCharacters adjustedExpression |
	specialCharacters := self class glossaryOfSpecialCharacters.
	flattenedCharacters := specialCharacters keys, specialCharacters values.
	adjustedExpression := self filterOutSpecialCharacters: flattenedCharacters from: aString.
	^ self areSpecialCharacters: specialCharacters properlyNestedWithin: adjustedExpression