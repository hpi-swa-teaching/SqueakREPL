initialize-release
initialize
	"Initialize server."

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
		readMode: #regular;
		clearHistory;
		clearHistoryIndex.
		

	self evaluator context: (REPLEvaluationContext newOn: self).