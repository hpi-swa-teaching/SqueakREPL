tab completion
clearCompletion

	self completing: false.
	self completionTarget: nil.
	self suggestions: nil.
	self suggestionIndex: 1.
	self interface ifNotNil: [
		self interface printInline: self inputBuffer. 
		self interface print: self interface class restoreCursorPosition.
		self interface print: self interface class cursorShow ]