as yet unclassified
accept: aCharacter
	"Accept input character."
	(aCharacter = $q)
		ifTrue: [ self interface shell releaseDebugger. ^self ].

	self interface output: 
		String crlfcrlf, 
		self interface class cursorHome,
		self interface class eraseDown,
		self interface class horizontalLine,
		self debuggingStackView,
		self interface class horizontalLine, 
		(self performDebuggingActionFor: aCharacter), 
		String crlf , 
		self interface class horizontalLine,
		self codeText,
		String crlf,
		self interface class horizontalLine.

	self interface flushOutput.