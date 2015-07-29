testing
testParenthesesTogetherWithValidStaticArrays
	"Check whether parentheses together with valid static arrays are recognized appropriately."

	self assert: (self parser isCompletedExpression: 'a := #(1 2 3 4)')