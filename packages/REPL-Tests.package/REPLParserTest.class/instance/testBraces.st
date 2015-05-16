testing
testBraces
	"Check whether braces are recognized appropriately."

	| expressionParser |
	expressionParser := self parser.
	self
		assert: (expressionParser isCompletedExpression:
			'c := #{ "The syntax error arising from evaluating the latter expression is handled elsewhere."');
		assert: (expressionParser isCompletedExpression:
			'a := {1 . 2 . 3 . 4}');
		assert: (expressionParser isCompletedExpression:
			'a := {1 . {{2 . 3} . 4}}');
		assert: (expressionParser isCompletedExpression:
			's := ''Braces '', $}, ${, '' are used in specialized ways in poetry and music.''');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "The musical term for this mark { joining staves is accolade"');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "The musical term for this mark }} joining staves is accolade"');
		deny: (expressionParser isCompletedExpression:
			'c := {}, {');
		deny: (expressionParser isCompletedExpression:
			'a := {1 . 2 . 3 . 4');
		deny: (expressionParser isCompletedExpression:
			'a := {1 . {{2 . 3} . 4}');
		deny: (expressionParser isCompletedExpression:
			's := ''Braces '', $}, {, '' are used in specialized ways in poetry and music.''');
		deny: (expressionParser isCompletedExpression:
			'i := {0 "The musical term for this mark { joining staves is accolade"');
		deny: (expressionParser isCompletedExpression:
			'i := 0}} "The musical term for this mark }} joining staves is accolade"')