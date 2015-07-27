testing
testEvaluator
	"Check whether access to the evaluator is granted within the context under test."

	self assert: (self evaluator == self context evaluator)