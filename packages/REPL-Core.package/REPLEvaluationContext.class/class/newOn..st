initializing
newOn: aUserInterface
"newFor: anExpressionEvaluator on: aUserInterface with: anExpressionParser"
	"Answer a newly created and fully initialized instance of the receiver on behalf of anExpressionEvaluator used by aUserInterface with the help of anExpressionParser."

	^ self newFor: aUserInterface evaluator on: aUserInterface with: aUserInterface parser