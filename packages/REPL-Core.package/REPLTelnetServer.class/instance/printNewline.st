printing
printNewline
	"Wrap the current line and show a prompt to the client."

	self print: self class lineSymbol;
		 print: self class eraseLineUntilEnd