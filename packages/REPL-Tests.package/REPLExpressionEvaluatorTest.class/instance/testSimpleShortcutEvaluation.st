testing
testSimpleShortcutEvaluation
	"Test evaluation of simple repl shortcuts."

	self assertEvaluationOf: '#testShortcut!5' expecting: 25