configuring
openingMessage
	"Answer message to be printed on opening of REPL."

	^ String crlf , String crlf , (self colorize: ' *** ' with: self colorGood) , 'Welcome. This is your Squeak REPL'
		, (self colorize: ' *** ' with: self colorGood) , String crlfcrlf, self lineSymbol 