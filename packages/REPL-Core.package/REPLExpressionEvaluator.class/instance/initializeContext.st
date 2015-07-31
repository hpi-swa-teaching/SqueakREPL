initializing
initializeContext
	"Initialize a new instance of the evaluation context."

	self context: (self class classOfEvaluationContext
					newFor: self
					on: nil
					with: self class classOfExpressionParser new)
