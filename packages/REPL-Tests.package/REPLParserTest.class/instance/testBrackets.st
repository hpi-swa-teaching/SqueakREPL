testing
testBrackets
	"Check whether brackets are recognized appropriately."

	| expressionParser |
	expressionParser := self parser.
	self
		assert: (expressionParser isCompletedExpression:
			'a := #[ "The syntax error arising from evaluating the latter expression is handled elsewhere."');
		assert: (expressionParser isCompletedExpression:
			'b := [ i1 := 1. i2 := 2 ]');
		assert: (expressionParser isCompletedExpression:
			'b := [ :i | i > 1 ifTrue: [ i * (b value: i - 1) ] ifFalse: [ 1 ] ]');
		assert: (expressionParser isCompletedExpression:
			's := ''Brackets '', $[, $], '' are mainly used to insert explanatory material.''');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "A bracketed ellipsis [ ... ] is often used to indicate omitted material."');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "A bracketed ] ellipsis is often used to indicate omitted material."');
		deny: (expressionParser isCompletedExpression:
			'a := #[ ], [');
		deny: (expressionParser isCompletedExpression:
			'b := [ i1 := 1. i2 := 2');
		deny: (expressionParser isCompletedExpression:
			'b := [ :i | i > 1 ifTrue: [ i * (b value: i - 1) ]');
		deny: (expressionParser isCompletedExpression:
			's := ''Brackets '', [, $], '' are mainly used to insert explanatory material.''');
		deny: (expressionParser isCompletedExpression:
			'i := [ 0 "A bracketed ellipsis [ ... ] is often used to indicate omitted material."');
		deny: (expressionParser isCompletedExpression:
			'i := 0 ] "A bracketed ] ellipsis is often used to indicate omitted material."')