testing
testBracesTogetherWithInvalidDynamicArrays
	"Check whether braces together with invalid dynamic arrays are recognized appropriately."

	self deny: (self parser isCompletedExpression: 'a := {1 . {{2 . 3} . 4}')