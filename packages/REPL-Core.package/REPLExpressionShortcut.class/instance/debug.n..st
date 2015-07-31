repl
debug: aContext n: anInteger

"TODO: brauchen wir das?"
	| window |
	window := (World submorphs select: [ :eachMorph | eachMorph respondsTo: #label ]) at: anInteger.
	window model class = Debugger
		ifFalse: [ ^ aContext userInterface colorize: 'This is not a debugger.' with: aContext interface class colorBad ].

	aContext interface debugger: window.
	aContext interface debugging: true.

	^ (aContext interface colorize: 'Debugger attached!' with: aContext interface class colorGood) , String crlf