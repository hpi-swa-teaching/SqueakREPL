testing
testBracketsWithinValidBlockClosures
	"Check whether brackets within valid block closures are recognized appropriately."

	self assert: (self expressionParser isCompletedExpression: 'b := [ :i | i > 1 ifTrue: [ i * (b value: i - 1) ] ifFalse: [ 1 ] ]')