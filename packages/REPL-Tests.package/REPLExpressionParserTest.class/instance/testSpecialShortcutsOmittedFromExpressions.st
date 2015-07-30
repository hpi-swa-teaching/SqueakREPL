testing
testSpecialShortcutsOmittedFromExpressions
	"Check whether expressions not containing various special shortcuts are recognized appropriately."

	self
		deny:
			(self expressionParser
				makesUseOfShortcuts:
					'self doPreprocessing. [Smalltalk snapshot: true andQuit: true] fork. self doPostprocessing')