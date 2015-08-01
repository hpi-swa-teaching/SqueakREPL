testing
testBlockEvaluation
	"Test evaluation of expressions containing blocks."

	self assertEvaluationOf: '[ 5 + 5 ] value' expecting: 10