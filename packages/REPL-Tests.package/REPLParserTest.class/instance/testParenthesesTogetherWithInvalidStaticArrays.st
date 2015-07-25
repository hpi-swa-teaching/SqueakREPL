testing
testParenthesesTogetherWithInvalidStaticArrays
	"Check whether parentheses together with invalid static arrays are recognized appropriately."

	self
		assert:
			(self parser
				isCompletedExpression:
					'a := #(1 2 3 4 "The syntax error arising from evaluating the latter expression is handled elsewhere."')