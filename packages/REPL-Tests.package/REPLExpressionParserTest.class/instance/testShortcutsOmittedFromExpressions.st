testing
testShortcutsOmittedFromExpressions
	"Check whether expressions not containing any shortcuts are recognized appropriately."

	self
		deny:
			(self parser
				makesUseOfShortcuts:
					'(Smalltalk hasClassNamed: ''A'') ifFalse: [ Object subclass: #A instanceVariableNames: '''' classVariableNames: '''' poolDictionaries: '''' category: ''A'' ]')