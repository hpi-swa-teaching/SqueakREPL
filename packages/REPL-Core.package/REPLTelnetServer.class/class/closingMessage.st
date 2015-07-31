defaults
closingMessage
	"Answer message to print on closing of REPL."

	^ self cursorShow, String crlfcrlf , (self colorize: 'Goodbye!' with: self colorGood) , String crlf