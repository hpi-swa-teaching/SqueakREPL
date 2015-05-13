testing
testComments
	"Check whether explanatory notes are ignored properly."

	self
		assert: (self parser isExpression: '"This is a self-explanatory note." 1 + 1.').
	self
		assert: (self parser isExpression: '1 "This is a self-explanatory note." + 1.').
	self
		assert: (self parser isExpression: '1 + "This is a self-explanatory note." 1.').
	self
		assert: (self parser isExpression: '1 + 1. "This is a self-explanatory note."').
	self
		assert: (self parser isExpression: '1 + 1. "This is a self-explanatory note containing the special characters (, {, [, ''"')