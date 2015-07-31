keys
acceptReturn
	"Handle return key."
	
	(self isExpression: self buffer)
		ifFalse: [
			self interface
				print: String crlf;
				print: self interface class continuationSymbol.
			self appendInput: String cr ]
		ifTrue: [
			self evaluateCurrentLine ]