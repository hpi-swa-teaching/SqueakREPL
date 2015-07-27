testing
testHandledErrorNotification
	"Tests the block execution and the given notification object in case of a syntax error.
NOTE: These tests have to be updated if the error handling behavior of the compiler changes."

	| result |
	result := false.
	self evaluator
		evaluate: 'test$$$'
		onError: [ :ntfy | 
			result := true.
			self assert: ntfy model = self evaluator workspace.
			self assert: ntfy text = 'test$$$'.
			self assert: ntfy lastError = 'Error: "A Character was expected ->" at position 8'.
			self assert: ntfy lastErrorPosition = 8.
			self assert: ntfy lastErrorMessage = 'A Character was expected ->'.
			self assert: ntfy lastErrorStatement = 'test$$$'.
			self assert: ntfy formatError = 'test$$$A Character was expected ->' ].
	self assert: result