initialize-release
initialize 
	"Initialize REPL interface."

	self 
		socket: Socket newTCP;
		clearInput;
		parser: REPLParser new; 
		evaluator: REPLEvaluator new;
		nextIsConfirmation: false.

	self evaluator context: REPLContext new.
	self evaluator context
		evaluator: self evaluator;
		server: self;
		parser: self parser.