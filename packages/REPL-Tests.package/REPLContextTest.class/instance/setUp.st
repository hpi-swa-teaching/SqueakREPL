running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		evaluator: REPLExpressionEvaluator new;
		interface: REPLTelnetServer new;
		parser: REPLExpressionParser new;
		context: (REPLEvaluationContext newFor: self evaluator on: self interface with: self parser)