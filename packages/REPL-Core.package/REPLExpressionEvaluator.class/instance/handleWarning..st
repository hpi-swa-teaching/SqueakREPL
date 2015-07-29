evaluation
handleWarning: aWarning
	"Handle a warning and notify the user."

	| interface |
	interface := self context interface.
	
	interface
		print: String crlf, (interface colorize: ('Warning: ', aWarning messageText) with: interface class colorInfo).

	aWarning resume.