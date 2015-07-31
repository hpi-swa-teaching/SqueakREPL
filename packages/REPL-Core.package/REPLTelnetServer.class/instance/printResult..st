printing
printResult: aString
	"Print aString to client."

	self print: 
		String crlf, 
		self class eraseLineUntilEnd, 
		aString, 
		self class lineSymbol