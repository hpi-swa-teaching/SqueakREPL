helper
assertEvaluationOf: aString expecting: anObject
	"Evaluate aString and assert equality of the result and anObject."

	| result |
	result := self evaluate: aString.

	self
		assert: (result = anObject)
		description: 'Unexpected result ', result, ', expected ', anObject