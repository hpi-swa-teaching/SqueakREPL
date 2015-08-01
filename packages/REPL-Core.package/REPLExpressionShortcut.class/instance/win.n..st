repl
win: aContext n: anInteger
	"Answer a window identified by anInteger."

	| windows |
	windows := World submorphs select: [ :eachMorph | eachMorph respondsTo: #label ].
	^ windows at: anInteger