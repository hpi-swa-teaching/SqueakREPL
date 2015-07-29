repl
attach: aContext n: anInteger
	"Attache the REPL to the debugger window identified by anInteger.

Usage:
!debuggers
#attach!4"

	| debugger |
	debugger := Debugger allInstances at: anInteger.
	aContext interface debugger: debugger.
	aContext interface debugger debug.
	aContext interface debugging: true.

	^ (aContext interface colorize: 'Debugger attached!' with: aContext interface class colorGood) asString , String crlf