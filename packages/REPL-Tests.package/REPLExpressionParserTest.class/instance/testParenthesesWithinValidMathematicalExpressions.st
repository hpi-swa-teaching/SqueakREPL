testing
testParenthesesWithinValidMathematicalExpressions
	"Check whether parentheses within valid mathematical expressions are recognized appropriately."

	self assert: (self parser isCompletedExpression: '1 + ((2 - 3) * 4) / (5 + ((6 - (7 * 8)) / 9))')