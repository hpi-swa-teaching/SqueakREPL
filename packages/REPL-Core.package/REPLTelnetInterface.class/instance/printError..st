printing
printError: aString
	"Print the error aString to the client."

	self print: String crlf , self class eraseLineUntilEnd , (self class colorize: aString with: self class colorBad)