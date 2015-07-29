testing
testIncorrectOrdinaryShortcutCompletion
	"Check whether ordinary expression shortcuts are completed properly."

	self deny: ((self expressionCompletion complete: '#cc') includes: '#dc o:')