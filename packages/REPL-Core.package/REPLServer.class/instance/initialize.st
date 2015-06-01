initialize-release
initialize 
	"Initialize REPL interface."

	self 
		socket: Socket newTCP;
		clearInput;
		parser: REPLParser new; 
		evaluator: REPLEvaluator new.