testing
testUserInterface
	"Check whether access to the user interface is granted within the evaluation context under test."

	self assert: self userInterface == self evaluationContext userInterface