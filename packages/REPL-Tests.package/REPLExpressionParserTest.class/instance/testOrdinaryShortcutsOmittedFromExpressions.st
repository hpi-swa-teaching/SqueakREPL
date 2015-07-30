testing
testOrdinaryShortcutsOmittedFromExpressions
	"Check whether expressions not containing various ordinary shortcuts are recognized appropriately."

	self
		deny:
			(self expressionParser
				makesUseOfShortcuts:
					'self doPreprocessing. Object subclass: #NewClass instanceVariableNames: '''' classVariableNames: '''' poolDictionaries: '''' category: ''NewCategory''. self doPostprocessing')