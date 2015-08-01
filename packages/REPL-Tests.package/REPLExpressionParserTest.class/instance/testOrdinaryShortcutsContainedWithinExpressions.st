testing
testOrdinaryShortcutsContainedWithinExpressions
	"Check whether expressions containing various ordinary shortcuts are recognized appropriately."

	self
		assert:
			(self expressionParser
				makesUseOfShortcuts: 'self doPreprocessing. #cc s: #NewClass c: ''NewCategory''. self doPostprocessing')