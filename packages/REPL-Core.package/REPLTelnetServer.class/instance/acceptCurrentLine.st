handling
acceptCurrentLine
	| result |

	result := self evaluate: self buffer.
	result
		ifNil: [ 
			self clearInput.
			self print: self lineSymbol , self clearLineUntilEnd.
			^ self ].
	(self isRepeatableStatement: self buffer)
		ifTrue: [ 
			history add: self buffer.
			historyIndex := history size ].
	self
		send: String crlf , (self escapeCode: '[K') , result , self lineSymbol;
		clearInput