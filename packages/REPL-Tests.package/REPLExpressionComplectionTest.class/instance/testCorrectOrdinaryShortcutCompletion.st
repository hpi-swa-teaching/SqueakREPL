testing
testCorrectOrdinaryShortcutCompletion
	"Check whether ordinary expression shortcuts are completed properly."

	self assert: ((self expressionCompletion complete: '#cc') includes: '#cc s:c:')