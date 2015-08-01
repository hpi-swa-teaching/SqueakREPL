testing
testShortcutEvaluation
	"Test evaluation of repl shortcuts."

	self assertEvaluationOf: '#testShortcut n: 5' expecting: 25