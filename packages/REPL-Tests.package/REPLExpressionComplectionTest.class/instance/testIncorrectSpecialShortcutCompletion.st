testing
testIncorrectSpecialShortcutCompletion
	"Check whether special expression shortcuts are completed properly."

	self deny: ((self expressionCompletion complete: '!q') includes: '!help')