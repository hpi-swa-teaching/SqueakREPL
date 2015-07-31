repl
attach: aContext n: anInteger
	"Attache the REPL to the debugger window identified by anInteger.

Usage:
!debuggers
#attach!4"

	aContext userInterface attachDebuggerInstanceAt: anInteger.
	^ (aContext userInterface class colorize: 'Debugger attached!' with: aContext userInterface class colorGood) asString , String crlf
