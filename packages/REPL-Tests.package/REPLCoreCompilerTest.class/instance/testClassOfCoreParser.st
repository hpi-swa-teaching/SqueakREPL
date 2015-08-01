testing
testClassOfCoreParser
	"Check whether the class of the core parser can be obtained adequately."

	self assert: self coreCompilerClass parserClass == self coreParserClass