repl
quit: aContext

	aContext server
		print: String crlf, 'Goodbye!', String crlf;
		close.

	Smalltalk snapshot: true andQuit: true.