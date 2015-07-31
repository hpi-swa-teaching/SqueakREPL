tab completion
endCompletion
	"End completion process applying suggestion."

	self inputBuffer: 
		(self inputBuffer copyFrom: 1 to: self inputBuffer size - self completionTarget size), (self suggestions at: self suggestionIndex).
	self clearCompletion.