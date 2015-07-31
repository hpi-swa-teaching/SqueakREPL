evaluating
evaluateCurrentLine

	| result |
	result := self evaluate: self buffer.
	result
		ifNil: [ 
			self print: self class lineSymbol.
			self print: self class eraseLineUntilEnd.
			self clearInput.
			^ self ].
	(self isRepeatableStatement: self buffer)
		ifTrue: [ 
			history add: self buffer.
			historyIndex := history size + 1].
	self
		print: String crlf , self class eraseLineUntilEnd , result , self class lineSymbol;
		clearInput