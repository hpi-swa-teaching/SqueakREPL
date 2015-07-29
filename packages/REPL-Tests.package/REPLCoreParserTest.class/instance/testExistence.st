testing
testExistence
	"Check whether the class parsing expressions exists within the system."

	self assert: (self coreParserClass isClass)