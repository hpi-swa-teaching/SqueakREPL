evaluating
evaluateCurrentLine

	| result |

	result := self evaluate: self buffer.
	result
		ifNil: [ 
			self clearInput.
			self print: self lineSymbol , self class eraseLineUntilEnd .
			^ self ].
	(self isRepeatableStatement: self buffer)
		ifTrue: [ 
			history add: self buffer.
			historyIndex := history size ].
	self
		send: String crlf , self class eraseLineUntilEnd , result , self lineSymbol;
		clearInput