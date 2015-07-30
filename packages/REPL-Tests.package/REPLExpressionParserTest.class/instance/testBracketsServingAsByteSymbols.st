testing
testBracketsServingAsByteSymbols
	"Check whether brackets serving as byte symbols are recognized appropriately."

	self assert: (self expressionParser isCompletedExpression: 'c := #''{''')