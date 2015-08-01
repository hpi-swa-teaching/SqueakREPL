printing
printResult: aString
	"Print the result aString to the client."

	self print: String crlf , self class eraseLineUntilEnd , aString , self class lineSymbol