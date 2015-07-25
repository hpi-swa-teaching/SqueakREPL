repl
debug: aContext n: anInteger

	| window |

	
	window := (World submorphs select: [ :m | (m respondsTo: #label)]) at: anInteger.

	(window model class = Debugger) ifFalse: [
		^ aContext server colorize: 'This is not a debugger.' with: (aContext server class colorBad).
	].

	aContext server debugger: window.
	aContext server debugging: true.

	^ (aContext server colorize: 'Debugger attached!' with: (aContext server class colorGood)), String crlf.