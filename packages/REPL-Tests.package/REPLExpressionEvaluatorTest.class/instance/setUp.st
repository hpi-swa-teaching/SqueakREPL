running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		userInterfaceMock: REPLUserInterfaceMock new;
		evaluator: REPLExpressionEvaluator new;
		evaluate: 'testVar := 123'.
	self context: (REPLEvaluationContext newFor: self evaluator on: self userInterfaceMock with: REPLExpressionParser new).
	self evaluator context: self context.
	self registerShortcuts