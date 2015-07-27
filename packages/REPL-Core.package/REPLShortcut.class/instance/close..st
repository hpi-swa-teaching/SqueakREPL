repl
close: aContext
	"Close the connection to the REPL.

Usage:
!close"

	aContext interface
		print: String crlf , 'Goodbye!' , String crlf;
		close