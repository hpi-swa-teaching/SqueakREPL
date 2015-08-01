testing
testMultipleStatementEvaluation
	"Test evaluation multiple statements at once."

	| code |
	code := 'var1 := 5.
var2 := 6.
var1 * var2'.
	self assertEvaluationOf: code expecting: 30