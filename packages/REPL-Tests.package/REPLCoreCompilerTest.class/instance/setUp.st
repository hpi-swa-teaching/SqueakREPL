running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self
		coreCompilerClass: REPLCoreCompiler;
		coreParserClass:REPLCoreParser