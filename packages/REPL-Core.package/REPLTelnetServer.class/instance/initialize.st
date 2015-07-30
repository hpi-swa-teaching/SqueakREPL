initialize-release
initialize
	"Initialize server."

	super initialize.
	self
		socket: Socket newTCP;
		port: self defaultPort;
		clearInput;
		completion: (REPLExpressionCompletion newWith: self evaluator workspace);
		completionIndex: 0;
		completionDirection: 1;
		completionSize: 0;
		debugging: false;
		finishCSICode;
		outputText: '';
		finishOperation;
		finishSubnegotiation;
		finishCommand;
		finishEscapeCode;
		nextIsEscapeCode: false;
		nextIsCSICode: false.
	history := OrderedCollection new.
	historyIndex := 1