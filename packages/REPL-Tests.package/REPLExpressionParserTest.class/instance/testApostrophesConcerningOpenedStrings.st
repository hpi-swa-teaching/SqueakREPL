testing
testApostrophesConcerningOpenedStrings
	"Check whether apostrophes concerning opened strings are recognized appropriately."

	self deny: (self parser isCompletedExpression: 's := ''In English, the apostrophe serves three purposes.')