testing
testBracketsTogetherWithInvalidByteArrays
	"Check whether brackets together with invalid byte arrays are recognized appropriately."

	self
		assert:
			(self parser
				isCompletedExpression:
					'a := #[1 2 3 4 "The syntax error arising from evaluating the latter expression is handled elsewhere."')