testing
testBracesTogetherWithValidDynamicArrays
	"Check whether braces together with valid dynamic arrays are recognized appropriately."

	self assert: (self parser isCompletedExpression: 'a := {1 . {{2 . 3} . 4}}')