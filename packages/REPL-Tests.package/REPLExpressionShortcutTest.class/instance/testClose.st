testing
testClose
	"Test closing the REPL."

	self assert: self userInterfaceMock closed not description: 'Interface was expected to not be closed.'.
	self shortcuts close: self context.
	self assert: self userInterfaceMock closed description: 'The interface was expected to be closed.'