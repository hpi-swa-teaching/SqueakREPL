initialize-release
initialize 
	"Initialize REPL interface."

	self stdOut: ThisOSProcess thisOSProcess stdOut.
	self stdIn: ThisOSProcess thisOSProcess stdIn.

	self parser: REPLParser new.
	self evaluator: REPLEvaluator new.

	self printInitialMessage.
	self startLoop