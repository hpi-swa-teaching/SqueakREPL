testing
testUndefinedVariable
	"Test evaluation of undefined variables"

	self
		assertEvaluationOf: 'notExistingVariable'
		expecting: nil
