testing
testBracketsTogetherWithValidByteArrays
	"Check whether brackets together with valid byte arrays are recognized appropriately."

	self assert: (self expressionParser isCompletedExpression: 'a := #[1 2 3 4]')