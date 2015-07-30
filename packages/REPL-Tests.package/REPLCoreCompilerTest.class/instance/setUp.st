running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		coreCompilerClass: self class classOfCoreCompiler;
		coreParserClass: self class classOfCoreParser