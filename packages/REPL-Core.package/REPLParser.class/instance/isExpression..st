preprocessing
isExpression: aString 
	"Check whether aString (an instance of String) may be a valid
	expression."

	| possibleExpression |
	possibleExpression := (aString copyWithRegex: '".*"' matchesReplacedWith: '') withBlanksTrimmed.
	((possibleExpression endsWith: '.')
			and: [(possibleExpression occurrencesOf: $()
					= (possibleExpression occurrencesOf: $))]
			and: [(possibleExpression occurrencesOf: $[)
					= (possibleExpression occurrencesOf: $])]
			and: [(possibleExpression occurrencesOf: ${)
					= (possibleExpression occurrencesOf: $})]
			and: [(possibleExpression occurrencesOf: $') even])
		ifTrue: [^ true]
		ifFalse: [^ false]