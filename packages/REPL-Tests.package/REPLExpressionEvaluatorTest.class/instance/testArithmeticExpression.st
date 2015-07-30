testing
testArithmeticExpression
	"Test evaluation of basic arithmetic expressions."

	self
		assertEvaluationOf: '15 * 30'
		expecting: 450.
