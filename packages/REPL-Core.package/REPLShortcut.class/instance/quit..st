repl
quit: aContext
	"Close the connection to the REPL and shut down the running image.

Usage:
!quit"

	aContext interface
		print:
			String crlf , String crlf , (aContext interface colorize: 'Goodbye!' with: aContext interface class colorGood) , String crlf
				, String crlf.
	Smalltalk snapshot: true andQuit: true