evaluating
handleReturn
	"Handle return key."
	| result |
	(self isExpression: self buffer)
		ifFalse: [self print: String crlf;
				 print: self continuationSymbol.
			self appendInput: String cr.
			^ self].
	Transcript show: 'Evaluating: ' , self buffer;
		 cr.
	history add: self buffer.
	historyIndex := historyIndex + 1.
	result := self evaluate: self buffer.
	result notNil
		ifTrue: [self print: String crlf;
				 print: result
					, (self escapeCode: '[K')].
	self print: String crlf , self lineSymbol;
		 clearInput.
	^ result