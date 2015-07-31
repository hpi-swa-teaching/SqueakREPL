repl
attach: aContext n: anInteger
	"Attache the REPL to the debugger window identified by anInteger.

Usage:
!debuggers
#attach!4"

	| debugger |
	debugger := Debugger allInstances at: anInteger.
	aContext userInterface debugger: debugger.
	aContext userInterface debugger debug.
	aContext userInterface debugging: true.

	^ (aContext userInterface colorize: 'Debugger attached!' with: aContext userInterface class colorGood) asString , String crlf