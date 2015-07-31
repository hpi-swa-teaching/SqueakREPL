keys
acceptReturn
	"Handle return key."
	"self halt."
	self isCompleting ifTrue: [ self endCompletion. ^self ].

	(self isExpression: self inputBuffer)
		ifFalse: [
			self interface
				print: String crlf;
				print: self interface class continuationSymbol.
			self appendInput: String cr ]
		ifTrue: [
			self evaluateCurrentLine ].

	self cursorPosition: 1.