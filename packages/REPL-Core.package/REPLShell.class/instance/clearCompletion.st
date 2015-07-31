completing
clearCompletion
	"Reset visuals and completion state."

	self 
		completing: false;
		clearCompletionTarget;
		clearSuggestions;
		suggestionIndex: 1.
		
	self interface ifNotNil: [
		self interface 
			printInline: self inputBuffer;
			print: self interface class restoreCursorPosition;
			print: self interface class cursorShow ].