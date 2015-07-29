accessing
parserClass
	"Answer the class parsing expressions for the receiver."

	^ ParserClass ifNil: [ self parserClass: REPLCoreParser ]