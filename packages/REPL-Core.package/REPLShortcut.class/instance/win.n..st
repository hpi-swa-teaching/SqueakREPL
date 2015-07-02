repl
win: aContext n: anInteger

	| result |

	result := (World submorphs select: [ :m | (m respondsTo: #label)]) at: anInteger.

	^ result.