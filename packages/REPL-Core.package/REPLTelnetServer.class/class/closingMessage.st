defaults
closingMessage
	"Answer message to print on closing of REPL."

	^ String crlf , String crlf , (self colorize: 'Goodbye!' with: self colorGood) , String crlf