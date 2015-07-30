printing
lineSymbol
	"Answer string to be printed on beginning of an input line."

	^ String crlf,
(self class colorize: '>>>' with: self class colorInfo),
String crlf, 
(self colorize: ' Enter !help for help.' with: self class colorDim) , 
String cr , 
self class cursorUp,
(self class cursorForward: 4)