configuring
lineSymbol
	"Answer string to be printed on beginning of an input line."

	^ String crlf , self eraseLineUntilEnd , (self colorize: '>>>' with: self colorInfo) , String crlf
		, self eraseLineUntilEnd , (self colorize: ' Enter !help for help.' with: self colorDim) , String cr , self cursorUp
		, (self cursorForward: 4)