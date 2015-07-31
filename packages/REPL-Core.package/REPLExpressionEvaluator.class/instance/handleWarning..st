evaluation
handleWarning: aWarning
	"Handle a warning and notify the user."

	| interface |
	interface := self context userInterface.
	
	interface
		print: String crlf, (interface class colorize: ('Warning: ', aWarning messageText) with: interface class colorInfo).

	aWarning resume