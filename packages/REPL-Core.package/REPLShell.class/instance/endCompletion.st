tab completion
endCompletion
	"End completion process applying suggestion."

	self input: 
		(self input copyFrom: 1 to: self input size - self completionTarget size), (self suggestions at: self suggestionIndex).
	self clearCompletion.