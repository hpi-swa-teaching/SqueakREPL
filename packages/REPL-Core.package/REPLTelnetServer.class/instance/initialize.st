initialize-release
initialize
	"Initialize server."

	"TODO: " 
	super initialize.

	self
		socket: Socket newTCP;
		port: self class defaultPort;
		parser: REPLExpressionParser new;
		evaluator: REPLExpressionEvaluator new;
		clearInput;
		completion: (REPLExpressionCompletion newWith: self evaluator workspace);
		completionIndex: 0;
		completionDirection: 1;
		completionSize: 0;
		debugging: false;
		outputText: '';
		endCompletion;
		readMode: #regular.

	self evaluator context: (REPLEvaluationContext newFor: self evaluator on: self with: self parser).
	history := OrderedCollection new.
	historyIndex := 1