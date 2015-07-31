repl
close: aContext
	"Close the connection to the REPL.

Usage:
!close"

	aContext userInterface
		print: String crlf , 'Goodbye!' , String crlf;
		close