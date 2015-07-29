testing
testExistence
	"Check whether the class parsing expressions exists within the system."

	self assert: (Smalltalk hasClassNamed: self coreParserClass name)