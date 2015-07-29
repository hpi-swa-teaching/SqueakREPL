testing
testParenthesesWithinInvalidMathematicalExpressions
	"Check whether parentheses within invalid mathematical expressions are recognized appropriately."

	self deny: (self parser isCompletedExpression: '1 + ((2 - 3) * 4) / (5 + (6 - (7 * 8)) / 9))')