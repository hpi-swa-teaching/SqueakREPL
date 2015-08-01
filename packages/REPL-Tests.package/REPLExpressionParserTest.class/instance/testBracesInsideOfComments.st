testing
testBracesInsideOfComments
	"Check whether braces inside of comments are recognized appropriately."

	self
		assert:
			(self expressionParser isCompletedExpression: 'i := 0 "The musical term for this mark { joining staves is accolade"')