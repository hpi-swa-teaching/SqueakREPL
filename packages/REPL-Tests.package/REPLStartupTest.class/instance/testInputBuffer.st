testing
testInputBuffer
	"Test appending data to the input buffer."

	self repl shell
		clearInput;
		appendInput: 'Test'.

	self assert: self repl shell inputBuffer = 'Test'
