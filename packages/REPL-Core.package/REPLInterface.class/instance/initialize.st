initialize-release
initialize 
	"Initialize REPL interface."

	self stdOut: ThisOSProcess thisOSProcess stdOut.
	self stdIn: ThisOSProcess thisOSProcess stdIn.

	self parser: REPLParser new.
	self evaluator: REPLEvaluator new.

	self evaluator context: REPLContext new.
	self evaluator context
		evaluator: self evaluator;
		server: self;
		parser: self parser.

	self printInitialMessage.
	self startLoop