testing
testCorrectCommonExpressionCompletion
	"Check whether common expressions are completed properly."

	self assert: ((self expressionCompletion complete: 'Ordered') includes: 'OrderedCollection')