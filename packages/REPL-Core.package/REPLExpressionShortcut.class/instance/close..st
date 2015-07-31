repl
close: aContext
	"Close the connection to the REPL.

Usage:
!close"
	"TODO"
	aContext userInterface
		print: String crlf , 'Goodbye!' , String crlf;
		close