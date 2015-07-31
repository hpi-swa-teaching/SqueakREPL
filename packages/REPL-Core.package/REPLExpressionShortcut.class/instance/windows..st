repl
windows: aContext
	"List all available windows that are opened in the image.

Usage:
!windows"

	| result windows index |
	windows := World submorphs select: [ :eachMorph | eachMorph respondsTo: #label ].
	index := 1.
	result := ''.
	windows
		do: [ :eachWindow | 
			result := result , String crlf , ' ' , (aContext userInterface colorize: '(' , index , ') ' with: aContext userInterface class colorGood)
				, eachWindow label.
			index := index + 1 ].
	^result , String crlf.
