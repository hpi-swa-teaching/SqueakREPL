testing
testWarningHandling
	"Test handling of warning signals."

	self evaluate: 'warning := Warning new.
warning
	messageText: ''test'';
	signal'.

	self
		assert: (self userInterfaceMock containsOutput: (String crlf, 'Warning: test'))
		description: 'The expected output was not printed.'