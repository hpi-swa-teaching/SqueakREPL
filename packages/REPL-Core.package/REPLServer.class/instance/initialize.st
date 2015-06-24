initialize-release
initialize 
	"Initialize server."

	super initialize.

	self 
		socket: Socket newTCP;
		clearInput;
		completion: REPLOCompletion new;
		lastKey: $_;
		completionIndex: 0;
		completionDirection: 1;
		completionSize: 0;
		finishCSICode;
		finishEscapeCode;
		nextIsConfirmation: false;
		nextIsEscapeCode: false;
		nextIsCSICode: false.

	self completion workspace: (self evaluator workspace).

	history := OrderedCollection new.
	historyIndex := 1.