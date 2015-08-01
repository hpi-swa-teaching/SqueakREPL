debugging
accept: aCharacter
	"Print textual representation of debugger after handling aCharacter."

	| interfaceClass shell |
	shell := self interface shell.
	(aCharacter = self class exitCharacter)
		ifTrue: [ shell releaseDebugger. ^self ].

	interfaceClass := self interface class.
	shell appendOutput:
		String crlfcrlf,
		interfaceClass cursorHome,
		interfaceClass eraseDown,
		interfaceClass horizontalLine,
		self debuggingStackView,
		interfaceClass horizontalLine,
		(self performDebuggingActionFor: aCharacter),
		String crlf ,
		interfaceClass horizontalLine,
		self codeText,
		String crlf,
		interfaceClass horizontalLine;
		flushOutput.
