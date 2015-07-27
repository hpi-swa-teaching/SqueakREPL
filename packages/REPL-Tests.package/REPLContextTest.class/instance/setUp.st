running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		evaluator: REPLEvaluator new;
		interface: REPLServer new;
		parser: REPLParser new;
		context: (REPLContext newFor: self evaluator on: self interface with: self parser)