testing
testInterface
	"Check whether access to the interface is granted within the context under test."

	self assert: (self interface == self context interface)