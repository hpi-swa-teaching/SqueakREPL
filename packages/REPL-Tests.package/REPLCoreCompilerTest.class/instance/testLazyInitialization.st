testing
testLazyInitialization
	"Check whether the lazy initialization for answering the proper class of the core parser works as expected."

	self assert: (self coreCompilerClass parserClass == self coreParserClass)