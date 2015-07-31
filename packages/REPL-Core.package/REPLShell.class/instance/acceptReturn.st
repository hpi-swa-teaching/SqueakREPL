keys
acceptReturn
	"Handle return key."
	
	(self isExpression: self inputBuffer)
		ifFalse: [
			self inputBuffer: self inputBuffer, String cr.
			self cursorPosition: self inputBuffer size + 1.
			self output: String crlf, self interface class continuationSymbol.
			self flushOutput.
			]
		ifTrue: [
			self evaluateCurrentLine.
			self cursorPosition: 1.
].
