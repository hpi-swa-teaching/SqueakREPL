initialize-release
initialize
	"Initialize REPL interface."
	self parser: REPLParser new;
		 evaluator: REPLEvaluator new.
	self evaluator context: REPLContext new.
	self evaluator context evaluator: self evaluator;
		 server: self;
		 parser: self parser