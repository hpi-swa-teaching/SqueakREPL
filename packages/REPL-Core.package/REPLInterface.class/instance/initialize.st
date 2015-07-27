initialize-release
initialize
	"Initialize REPL interface."

	self
		parser: REPLParser new;
		evaluator: REPLEvaluator new.
	self evaluator context: (REPLContext newFor: self evaluator on: self with: self parser)