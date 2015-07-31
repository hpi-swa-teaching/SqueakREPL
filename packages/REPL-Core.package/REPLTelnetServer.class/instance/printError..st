printing
printError: aString
	"Print aString as error to client."

	self print: 		
		String crlf, 
		self class eraseLineUntilEnd, 
		(self class colorize: aString with: self class colorBad)