repl
debug: aContext n: anInteger

"TODO: brauchen wir das?"
	| window |
	window := (World submorphs select: [ :eachMorph | eachMorph respondsTo: #label ]) at: anInteger.
	window model class = Debugger
		ifFalse: [ ^ aContext userInterface class colorize: 'This is not a debugger.' with: aContext userInterface class colorBad ].

	aContext userInterface debugger: window.
	aContext userInterface debugging: true.

	^ (aContext userInterface colorize: 'Debugger attached!' with: aContext userInterface class colorGood) , String crlf
