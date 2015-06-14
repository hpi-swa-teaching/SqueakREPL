testing
testShortcutsContainedWithinExpressions
	"Check whether expressions containing various shortcuts are recognized appropriately."

	| randomlyChosenSelector |
	randomlyChosenSelector := (REPLShortcut selectors atRandom subStrings: #($:)) first.
	self assert: (self parser makesUseOfShortcuts: 'self doPreprocessing. #' , randomlyChosenSelector , '. self doPostprocessing')