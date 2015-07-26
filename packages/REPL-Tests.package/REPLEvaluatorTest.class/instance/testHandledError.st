testing
testHandledError
	"Tests the block execution in case of a syntax error."

	| result |
	result := false.
	self evaluator evaluate: 'test$$$' onError: [ :ntfy | result := true ].
	self assert: result