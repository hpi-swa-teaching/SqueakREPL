printing
lineSymbol
	"Answer string to be printed on beginning of an input line."

	^  String crlf,
		(self escapeCode: '[0;36m'),
		'>>> ',
		(self escapeCode: '[0m'),
		String crlf,
		(self colorize: 
		' Enter !help for help.'
		with: (self class colorDim)),

		String cr,
		
		(self escapeCode: '[A'),
		(self escapeCode: '[4C').