printing
printInline: aString
	"Print the message aString to the client without wrapping the line."

	self print: self class cursorUp , self class lineSymbol , aString , self class eraseLineUntilEnd.