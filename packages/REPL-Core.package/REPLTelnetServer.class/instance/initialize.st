initialize-release
initialize
	"Initialize server."

	super initialize.
	self
		socket: Socket newTCP;
		port: self defaultPort;
		clearInput;
		completion: REPLExpressionCompletion new;
		lastKey: $_;
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
		nextIsConfirmation: false;
		nextIsEscapeCode: false;
		nextIsCSICode: false.
	self completion workspace: self evaluator workspace.
	history := OrderedCollection new.
	historyIndex := 1