testing
testIncorrectCommonExpressionCompletion
	"Check whether common expressions are completed properly."

	self deny: ((self expressionCompletion complete: 'Ordered') includes: 'SortedCollection')