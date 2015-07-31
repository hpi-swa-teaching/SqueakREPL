initialize-release
initializeContext
	"Initialize a new instance of the evaluation context."

	self context: (REPLEvaluationContext
					newFor: self
					on: nil
					with: REPLExpressionParser new)
