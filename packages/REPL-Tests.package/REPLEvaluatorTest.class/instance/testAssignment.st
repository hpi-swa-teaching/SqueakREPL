testing
testAssignment
	"Tests the functionality of variable assignments."

	self assert: (self evaluator evaluate: 'test := 5') = 5.