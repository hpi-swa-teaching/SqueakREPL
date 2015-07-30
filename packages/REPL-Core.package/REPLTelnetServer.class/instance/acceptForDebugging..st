debugging
acceptForDebugging: aCharacter


	(aCharacter = $q)
		ifTrue: [ self endDebugging. self print: self lineSymbol. ^self ].

	self output: 
		String crlfcrlf, 
		self class cursorHome,
		self class eraseDown,
		self class horizontalLine,
		self debuggingStackView,
		self class horizontalLine, 
		(self performDebuggingActionFor: aCharacter), 
		String crlf , 
		self class horizontalLine,
		self codeText,
		String crlf,
		self class horizontalLine.

	Transcript show: 'Test'.
	self flushOutput.