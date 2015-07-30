initialize-release
initialize
	"Initialize server."

	super initialize.
	self
		socket: Socket newTCP;
		port: self class defaultPort;
		clearInput;
		completion: (REPLExpressionCompletion newWith: self evaluator workspace);
		completionIndex: 0;
		completionDirection: 1;
		completionSize: 0;
		debugging: false;
		outputText: '';
		endCompletion;
		readMode: #regular.

	history := OrderedCollection new.
	historyIndex := 1