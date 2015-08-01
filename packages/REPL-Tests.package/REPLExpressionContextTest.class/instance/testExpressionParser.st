testing
testExpressionParser
	"Check whether access to the expression parser is granted within the evaluation context under test."

	self assert: self expressionParser == self evaluationContext expressionParser