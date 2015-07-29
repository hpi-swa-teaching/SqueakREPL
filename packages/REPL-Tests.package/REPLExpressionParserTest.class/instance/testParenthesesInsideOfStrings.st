testing
testParenthesesInsideOfStrings
	"Check whether parentheses inside of strings are recognized appropriately."

	self
		assert:
			(self parser
				isCompletedExpression:
					's := ''Parentheses () contain material that serves to clarify, or is aside from the main point.''')