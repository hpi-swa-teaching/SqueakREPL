testing
testContextPersistency
	"Tests the persistency of the workspace's context."

	self assert: (self evaluator evaluate: 'contextVar := 555') = 555.
	self assert: (self evaluator evaluate: 'contextVar') = 555.
	self assert: (self evaluator evaluate: 'contextVar * 2') = 1110.