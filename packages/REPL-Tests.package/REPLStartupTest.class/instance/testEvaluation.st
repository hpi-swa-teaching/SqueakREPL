testing
testEvaluation
	"Test evaluation of code lines."

	self repl shell
		clearInput;
		appendInput: '1+1';
		acceptReturn.
	self
		assert: (self client receiveAvailableData asString endsWith: self repl class lineSymbol)
		description: 'Unexpected answer was sent.'