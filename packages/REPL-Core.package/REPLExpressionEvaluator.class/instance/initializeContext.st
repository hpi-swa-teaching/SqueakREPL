initialize-release
initializeContext 
	self context: (REPLEvaluationContext newFor: self on: nil with: REPLExpressionParser new)
