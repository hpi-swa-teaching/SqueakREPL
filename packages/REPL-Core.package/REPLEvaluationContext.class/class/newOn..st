initializing
newOn: aREPLShell
	"Answer a newly created and fully initialized instance of the receiver on behalf of anExpressionEvaluator used by aUserInterface with the help of anExpressionParser."

	^ self newFor: aREPLShell evaluator on: aREPLShell interface with: aREPLShell parser