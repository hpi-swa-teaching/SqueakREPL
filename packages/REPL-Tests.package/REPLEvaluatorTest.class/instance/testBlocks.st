testing
testBlocks
	"Tests the correct evaluation of blocks."

	self assert: (self evaluator evaluate: '[ 5 + 5 ] value') = 10.