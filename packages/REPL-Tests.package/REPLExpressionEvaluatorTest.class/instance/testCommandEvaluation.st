testing
testCommandEvaluation
	"Test evaluation of repl commands."

	self
		assertEvaluationOf: '!testCommand'
		expecting: self context