testing
testBraces
	"Check whether braces are recognized appropriately."

	self
		assert: (self parser isCompletedExpression: 'a := {1 . 2 . 3 . 4}');
		assert: (self parser isCompletedExpression: 'a := {1 . {{2 . 3} . 4}}');
		assert: (self parser isCompletedExpression: 's := ''Braces '', $}, ${, '' are used in specialized ways in poetry and music.''');
		assert: (self parser isCompletedExpression: 'i := 0 "The musical term for this mark { joining staves is accolade"');
		assert: (self parser isCompletedExpression: 'i := 0 "The musical term for this mark }{}{ joining staves is accolade"');
		assert: (self parser isCompletedExpression: 'c := }{');
		deny: (self parser isCompletedExpression: 'a := {1 . 2 . 3 .');
		deny: (self parser isCompletedExpression: 'a := {1 . {{2 . 3 . 4}}');
		deny: (self parser isCompletedExpression: 's := ''Braces '', $}, {, '' are used in specialized ways in poetry and music.''');
		deny: (self parser isCompletedExpression: 'i := }0 "The musical term for this mark { joining staves is accolade"');
		deny: (self parser isCompletedExpression: '{i := 0 "The musical term for this mark }{}{ joining staves is accolade"');
		should: [ (self parser isCompletedExpression: 'c := #{') ] raise: Error
