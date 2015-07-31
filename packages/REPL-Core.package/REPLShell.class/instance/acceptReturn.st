keys
acceptReturn
	"Handle return key."
	"self halt."
	self isCompleting ifTrue: [ self endCompletion. ^self ].

	(self isExpression: self input)
		ifFalse: [
			self 
				print: String crlf;
				print: self class continuationSymbol;
				appendInput: String cr ]
		ifTrue: [
			self evaluateCurrentLine ]