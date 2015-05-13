testing
testPeriods
	"Check whether periods are treated properly."

	self
		deny: (self parser isExpression: '1').
	self
		deny: (self parser isExpression: '1 +').
	self
		deny: (self parser isExpression: '1 + 1').
	self
		assert: (self parser isExpression: '1 + 1.')