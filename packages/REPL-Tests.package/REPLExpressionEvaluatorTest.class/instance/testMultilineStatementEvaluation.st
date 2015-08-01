testing
testMultilineStatementEvaluation
	"Test evaluation multiline statements"

	| code |
	code := '[
5 * 6
] value'.
	self assertEvaluationOf: code expecting: 30