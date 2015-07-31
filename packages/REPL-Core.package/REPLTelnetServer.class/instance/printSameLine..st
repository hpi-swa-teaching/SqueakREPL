printing
printSameLine: aString
	"Print aString in same line to client."

	self print: self class cursorUp , self class lineSymbol , aString , self class eraseLineUntilEnd.