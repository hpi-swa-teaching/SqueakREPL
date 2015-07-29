initialize-release
initialize
	"Initialize REPL interface."

	self
		parser: REPLExpressionParser new;
		evaluator: REPLExpressionEvaluator new.
	self evaluator context: (REPLEvaluationContext newFor: self evaluator on: self with: self parser)