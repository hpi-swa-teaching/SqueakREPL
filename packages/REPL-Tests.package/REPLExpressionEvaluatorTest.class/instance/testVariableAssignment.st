testing
testVariableAssignment
	"Test evaluation of variable assignments."

	self
		assertEvaluationOf: 'a := 5'
		expecting: 5.
