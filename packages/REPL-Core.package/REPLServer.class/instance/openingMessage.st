printing
openingMessage
	"Answer message to print on opening of REPL."

	^ String crlf , String crlf , (self colorize: ' *** ' with: self class colorGood) , 'Welcome. This is your Squeak REPL'
		, (self colorize: ' *** ' with: self class colorGood) , String crlf , String crlf