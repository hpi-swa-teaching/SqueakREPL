running
testInput

	self repl 
		clearInput;
		appendInput: 'Test'.

	self assert: self repl buffer = 'Test'