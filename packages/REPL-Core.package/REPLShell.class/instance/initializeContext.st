initializing
initializeContext
	"Initialize evaluator's context object with pointer to self."

	self evaluator context: (self class evaluationContextClass newOn: self).
		

	