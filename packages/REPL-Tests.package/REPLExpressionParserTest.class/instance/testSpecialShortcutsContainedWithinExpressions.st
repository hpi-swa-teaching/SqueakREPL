testing
testSpecialShortcutsContainedWithinExpressions
	"Check whether expressions containing various special shortcuts are recognized appropriately."

	self assert: (self expressionParser makesUseOfShortcuts: 'self doPreprocessing. !help. self doPostprocessing')