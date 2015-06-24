printing
lineSymbol
	"Answer string to be printed on beginning of an input line."

	^  String crlf, '>>> ',
		(self escapeCode: '[s'),
		String crlf,
		(self escapeCode: '[0;90m'), 
		' Enter !help for help.',
 		(self escapeCode: '[0m'),
		(self escapeCode: '[u'),
		(self escapeCode: '[5B'),
		(self escapeCode: '[A').