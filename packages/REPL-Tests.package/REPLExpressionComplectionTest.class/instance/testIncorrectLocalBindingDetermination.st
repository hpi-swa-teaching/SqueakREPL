testing
testIncorrectLocalBindingDetermination
	"Check whether local bindings are determined properly."

	self deny: ((self expressionCompletion complete: 'a') includes: 'bValue')