evaluating
handleWarning: aWarning
	"Handle a warning and notify the user."

	| interface colorizedWarning |
	interface := self context userInterface.
	colorizedWarning := interface class
							colorize: ('Warning: ', aWarning messageText)
							with: interface class colorBad.
	
	interface print: String crlf, colorizedWarning.

	aWarning resume