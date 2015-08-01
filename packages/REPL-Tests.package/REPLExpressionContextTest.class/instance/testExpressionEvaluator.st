testing
testExpressionEvaluator
	"Check whether access to the expression evaluator is granted within the evaluation context under test."

	self assert: self expressionEvaluator == self evaluationContext expressionEvaluator