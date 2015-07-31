initializing
initialize
	"Initialize server."

	self
		parser: REPLExpressionParser new;
		evaluator: REPLExpressionEvaluator new;
		clearInput;
		cursorPosition: 1;
		completion: (REPLExpressionCompletion newWith: self evaluator workspace);
		clearCompletion;
		debugging: false;
		outputText: '';
		clearHistory;
		clearHistoryIndex.
		

	