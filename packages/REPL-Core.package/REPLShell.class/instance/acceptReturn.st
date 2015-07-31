keys
acceptReturn
	"Accept return key."
	
	self isCompleting ifTrue: [ self endCompletion. ^self ].
	(self isExpression: self inputBuffer)
		ifFalse: [
			self 
				inputBuffer: self inputBuffer, String cr;
				cursorPosition: self inputBuffer size + 1;
				appendOutput: String crlf, self interface class continuationSymbol;
				flushOutput ]
		ifTrue: [
			self 
				evaluateCurrentLine;
				cursorPosition: 1 ]
