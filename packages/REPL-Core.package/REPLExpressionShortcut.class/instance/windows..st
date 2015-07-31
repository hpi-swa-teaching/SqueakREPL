repl
windows: aContext
	"List all available windows that are opened in the image.

Usage:
!windows"

	| windows interface |
	interface := aContext userInterface.
	windows := World submorphs select: [ :eachMorph | eachMorph respondsTo: #label ].
	^ windows
		inject: String empty
		into: [ :result :eachWindow | result , String crlf , ' '
										, (interface class colorize: '(' , (windows indexOf: eachWindow) , ') ' with: interface class colorGood)
										, eachWindow label ]