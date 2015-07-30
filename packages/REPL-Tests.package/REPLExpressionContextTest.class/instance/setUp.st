running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		expressionEvaluator: self class classOfExpressionEvaluator new;
		expressionParser: self class classOfExpressionParser new;
		userInterface: self class classOfTelnetServer new;
		evaluationContext: (self class classOfEvaluationContext newFor: self expressionEvaluator on: self userInterface with: self expressionParser)