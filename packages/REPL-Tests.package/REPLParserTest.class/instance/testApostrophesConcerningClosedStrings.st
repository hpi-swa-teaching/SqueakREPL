testing
testApostrophesConcerningClosedStrings
	"Check whether apostrophes concerning closed strings are recognized appropriately."

	self assert: (self parser isCompletedExpression: 's := ''The apostrophe ('', $'', '') was introduced into English in the 16th century in imitation of French practice.''')