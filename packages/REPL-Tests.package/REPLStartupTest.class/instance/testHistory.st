testing
testHistory
	"Test the input history."

	| shell |
	shell := self repl shell.
	self
		prepareHistory: '123';
		assert: shell history size = 1 description: 'History was expected to contain one element.'