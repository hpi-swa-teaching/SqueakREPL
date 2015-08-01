testing
testCompletion
	"Test the auto completion."

	| shell |
	shell := self repl shell.
	self repl shell
		clearInput;
		appendInput: 'Num'.
	shell
		acceptTab;
		acceptReturn;
		acceptArrowUp.
	self
		assert: shell historyIndex = 1 description: 'History index was expected to be one.';
		assert: shell inputBuffer = 'Number' description: 'Input buffer expected to be ''Number'''