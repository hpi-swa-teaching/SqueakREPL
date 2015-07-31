completing
endCompletion
	"End completion process and apply suggestion to input."

	self 
		inputBuffer: (self inputBuffer copyFrom: 1 to: self inputBuffer size - self completionTarget size), (self suggestions at: self suggestionIndex);
		cursorPosition: self inputBuffer size + 1;
		clearCompletion.