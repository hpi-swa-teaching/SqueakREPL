testing
testBracketsServingAsCharacters
	"Check whether brackets serving as characters are recognized appropriately."

	self assert: (self parser isCompletedExpression: 's := ''Brackets '', $[, $], '' are mainly used to insert explanatory material.''')