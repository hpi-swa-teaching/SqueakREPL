initialize-release
initialize
	"Initialize server."

	self
		parser: REPLExpressionParser new;
		evaluator: REPLExpressionEvaluator new;
		clearInput;
		completion: (REPLExpressionCompletion newWith: self evaluator workspace);
		clearCompletion;
		debugging: false;
		outputText: '';
		clearHistory;
		clearHistoryIndex.
		

	