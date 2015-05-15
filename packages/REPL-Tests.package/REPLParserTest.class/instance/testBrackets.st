testing
testBrackets
	"Check whether brackets are recognized appropriately."

	self
		assert: (self parser isCompletedExpression: 'b := [ i1 := 1. i2 := 2 ]');
		assert: (self parser isCompletedExpression: 'b := [ :i | i > 1 ifTrue: [ i * (b value: i - 1) ] ifFalse: [ 1 ] ]');
		assert: (self parser isCompletedExpression: 's := ''Brackets '', $[, $], '' are mainly used to insert explanatory material.''');
		assert: (self parser isCompletedExpression: 'i := 0 "A bracketed ellipsis [...] is often used to indicate omitted material."');
		assert: (self parser isCompletedExpression: 'i := 0 "A bracketed ] ellipsis is often used to indicate omitted material."');
		assert: (self parser isCompletedExpression: 'c := $[');
		deny: (self parser isCompletedExpression: 'b := [ i1 := 1. i2 := 2');
		deny: (self parser isCompletedExpression: 'b := [ :i | i > 1 ifTrue: [ i * (b value: i - 1) ]');
		deny: (self parser isCompletedExpression: 's := ''Brackets '', [, $], '' are mainly used to insert explanatory material.''');
		deny: (self parser isCompletedExpression: 'i := [0 "A bracketed ellipsis [...] is often used to indicate omitted material."');
		deny: (self parser isCompletedExpression: 'i := ]0 "A bracketed ] ellipsis is often used to indicate omitted material."');
		should: [ (self parser isCompletedExpression: 'a := #[') ] raise: Error
