testing
testHistoryNavigation
	"Test navigation in the input history."

	| shell |
	shell := self repl shell.
	self prepareHistory: '123'.
	shell acceptArrowUp.
	self
		assert: shell historyIndex = 1 description: 'History index was expected to be one.';
		assert: shell inputBuffer = '123' description: 'Input buffer expected to be ''123'''