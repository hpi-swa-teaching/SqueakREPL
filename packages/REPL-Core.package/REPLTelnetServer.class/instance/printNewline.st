printing
printNewline
	"Print newline with prompt to client."

	self print: self class lineSymbol.
	self print: self class eraseLineUntilEnd.