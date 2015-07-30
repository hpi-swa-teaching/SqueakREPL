testing
testBracesTogetherWithInvalidDynamicArrays
	"Check whether braces together with invalid dynamic arrays are recognized appropriately."

	self deny: (self expressionParser isCompletedExpression: 'a := {1 . {{2 . 3} . 4}')