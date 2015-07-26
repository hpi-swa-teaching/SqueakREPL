repl
quit: aContext
	aContext server
		print:
			String crlf , String crlf , (aContext server colorize: 'Goodbye!' with: aContext server class colorGood) , String crlf
				, String crlf.
	Smalltalk snapshot: true andQuit: true