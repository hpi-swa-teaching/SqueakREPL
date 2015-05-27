initialize-release
initialize 
	"Initialize REPL interface."

	self stdOut: OSProcess thisOSProcess stdOut.
	self stdIn: OSProcess thisOSProcess stdIn.

	self parser: REPLParser new.
	self evaluator: REPLEvaluator new.

	self printInitialMessage.
	self startLoop