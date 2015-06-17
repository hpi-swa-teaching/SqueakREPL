initialize-release
initialize 
	"Initialize REPL interface."

	self 
		socket: Socket newTCP;
		clearInput;
		parser: REPLParser new; 
		evaluator: REPLEvaluator new;
		completion: REPLOCompletion new;
		lastKey: $_;
		completionIndex: 0;
		completionDirection: 1;
		completionSize: 0;
		finishCSICode;
		finishEscapeCode.

	history := OrderedCollection new.
	historyIndex := 1.