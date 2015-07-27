testing
testUnhandledError
	"Tests the return of nil in case of a syntax error."

	self assert: (self evaluator evaluate: 'test$$$') = nil