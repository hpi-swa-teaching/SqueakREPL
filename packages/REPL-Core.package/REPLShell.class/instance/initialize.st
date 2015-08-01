initializing
initialize
	"Initialize a newly created instance of the receiver."

	self
		parser: self class expressionParserClass new;
		evaluator: self class expressionEvaluatorClass new;
		clearInput;
		cursorPosition: 1;
		completion: (self class expressionCompletionClass newWith: self evaluator workspace);
		clearCompletion;
		debugging: false;
		clearOutputBuffer;
		clearHistory;
		clearHistoryIndex