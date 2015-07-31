configuring
continuationSymbol
	"Answer string to be printed at beginning of a continued line."

	^ (self colorize: '... ' with: self colorDim) , self eraseLineUntilEnd