testing
testParentheses
	"Check whether parentheses are treated properly."

	self
		assert: (self parser isExpression: ')(.').
	self
		assert: (self parser isExpression: '1 + (2 - 3).').
	self
		assert: (self parser isExpression: '1 + ((2 - 3) * 4).').
	self
		assert: (self parser isExpression: '1 + (((2 - 3) * 4) / 5).').
	self
		deny: (self parser isExpression: '1 + (.').
	self
		deny: (self parser isExpression: '1 + ).')