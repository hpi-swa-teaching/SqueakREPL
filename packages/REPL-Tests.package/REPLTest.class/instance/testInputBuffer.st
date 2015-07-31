running
testInputBuffer
	self repl shell
		clearInput;
		appendInput: 'Test'.
	self assert: self repl shell inputBuffer = 'Test'
