repl
close: aContext

	aContext server
		print: String crlf, 'Goodbye!', String crlf.

	Smalltalk snapshot: true andQuit: true. 