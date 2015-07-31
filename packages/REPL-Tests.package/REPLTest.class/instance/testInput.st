running
testInput
	self repl shell
		clearInput;
		appendInput: 'Test'.
	self assert: self repl shell input = 'Test'
