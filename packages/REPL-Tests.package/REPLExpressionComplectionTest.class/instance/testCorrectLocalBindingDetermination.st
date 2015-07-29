testing
testCorrectLocalBindingDetermination
	"Check whether local bindings are determined properly."

	self assert: ((self expressionCompletion complete: 'a') includes: 'aValue')