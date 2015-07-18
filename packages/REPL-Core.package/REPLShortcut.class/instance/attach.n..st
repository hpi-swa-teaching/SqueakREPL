repl
attach: aContext n: anInteger

	| debugger |

	
	debugger := Debugger allInstances at: anInteger.

	"debugger contextStack ifNil: [
		^ (aContext server colorize: 'Debugger has no context stack.' with: (aContext server class colorBad)) asString.
	]."

	aContext server debugger: debugger.
	aContext server debugger debug.
	aContext server debugging: true.

	^ (aContext server colorize: 'Debugger attached!' with: (aContext server class colorGood)) asString, String crlf.