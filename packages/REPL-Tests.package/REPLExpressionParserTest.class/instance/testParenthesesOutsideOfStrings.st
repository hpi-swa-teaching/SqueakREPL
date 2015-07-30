testing
testParenthesesOutsideOfStrings
	"Check whether parentheses outside of strings are recognized appropriately."

	self
		deny:
			(self expressionParser
				isCompletedExpression:
					's := ''Parentheses ('', ), '' contain material that serves to clarify, or is aside from the main point.''')