testing
testParser
	"Check whether access to the parser is granted within the context under test."

	self assert: (self parser == self context parser)