testing
testRunFile
	"Test the rf shortcut."

	| expectedResult result |
	expectedResult := 10.

	result := self shortcuts
					rf: self context
					n: self class testFileName.

	self
		assert: (result = expectedResult)
		description: 'Unexpected result ', result, ', expected ', expectedResult