handling
handleReturn
	"Handle return key."

	(self isExpression: self buffer)
		ifFalse: [
			self 
				print: String crlf;
				print: self continuationSymbol;
				appendInput: String cr ]
		ifTrue: [
			self acceptCurrentLine ]