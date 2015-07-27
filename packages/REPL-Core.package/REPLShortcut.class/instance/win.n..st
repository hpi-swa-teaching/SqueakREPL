repl
win: aContext n: anInteger

	"TODO: brauchen wir das?"
	| result |
	result := (World submorphs select: [ :m | m respondsTo: #label ]) at: anInteger.
	^ result