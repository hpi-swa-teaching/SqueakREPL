printing
continuationSymbol
	"Answer string to be printed on beginning of a continued line."

	^ (self colorize: '... ' with: self class colorDim) , self clearLineUntilEnd