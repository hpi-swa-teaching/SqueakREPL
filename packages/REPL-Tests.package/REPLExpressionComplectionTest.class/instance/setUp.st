running
setUp
	"Set up a newly created instance of the receiver."

	super setUp.
	self expressionCompletion: (self class classOfExpressionCompletion newWith: self)