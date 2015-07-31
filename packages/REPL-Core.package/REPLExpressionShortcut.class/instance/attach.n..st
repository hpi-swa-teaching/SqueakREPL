repl
attach: aContext n: anInteger
	"Attache the REPL to the debugger window identified by anInteger.

Usage:
!debuggers
#attach!4"

	| interface |
	interface := aContext userInterface.
	interface attachDebuggerInstanceAt: anInteger.
	^ (interface class colorize: 'Debugger attached!' with: interface class colorGood) asString , String crlf
