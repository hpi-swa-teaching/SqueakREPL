initialize-release
initializeContext
	"Initialize a new instance of the evaluation context."

	self context: (REPLEvaluationContext new
					newFor: self
					on: nil
					with: REPLExpressionParser new)
