testing
testBracesOutsideOfComments
	"Check whether braces outside of comments are recognized appropriately."

	self deny: (self parser isCompletedExpression: 'i := {0 "The musical term for this mark { joining staves is accolade"')