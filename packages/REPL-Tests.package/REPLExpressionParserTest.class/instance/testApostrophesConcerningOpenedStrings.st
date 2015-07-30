testing
testApostrophesConcerningOpenedStrings
	"Check whether apostrophes concerning opened strings are recognized appropriately."

	self deny: (self expressionParser isCompletedExpression: 's := ''In English, the apostrophe serves three purposes.')