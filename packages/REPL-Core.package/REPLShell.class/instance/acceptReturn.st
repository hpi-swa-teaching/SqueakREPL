keys
acceptReturn
	"Handle return key."
	
	(self isExpression: self buffer)
		ifFalse: [
			self 
				print: String crlf;
				print: self class continuationSymbol;
				appendInput: String cr ]
		ifTrue: [
			self evaluateCurrentLine ].

	self cursorPosition: 1.