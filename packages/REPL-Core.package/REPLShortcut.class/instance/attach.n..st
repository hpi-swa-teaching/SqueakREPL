repl
attach: aContext n: anInteger
	"Attache the REPL to the debugger window identified by anInteger.

Usage:
!debuggers
#attach!4"

	"TODO: Refactoring?"
	| debugger |
	debugger := Debugger allInstances at: anInteger.	"debugger contextStack ifNil: [
	^ (aContext interface colorize: 'Debugger has no context stack.' with:
	(aContext interface class colorBad)) asString.
	]."
	aContext interface debugger: debugger.
	aContext interface debugger debug.
	aContext interface debugging: true.
	^ (aContext interface colorize: 'Debugger attached!' with: aContext interface class colorGood) asString , String crlf