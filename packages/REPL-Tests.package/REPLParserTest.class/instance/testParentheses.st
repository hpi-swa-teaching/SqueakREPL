testing
testParentheses
	"Check whether parentheses are recognized appropriately."

	| expressionParser |
	expressionParser := self parser.
self
		assert: (expressionParser isCompletedExpression:
			'a := #(1 2 3 4 "The syntax error arising from evaluating the latter expression is handled elsewhere."');
		assert: (expressionParser isCompletedExpression:
			'1 + ((2 - 3) * 4) / (5 + ((6 - (7 * 8)) / 9))');
		assert: (expressionParser isCompletedExpression:
			's := ''Parentheses () contain material that serves to clarify, or is aside from the main point.''');
		assert: (expressionParser isCompletedExpression:
			's := ''Parentheses '', $(, $), '' contain material that serves to clarify, or is aside from the main point.''');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "A Parenthesis like ( is included in the syntaxes of many computer programming languages."');
		assert: (expressionParser isCompletedExpression:
			'i := 0 "A Parenthesis like ) is included in the syntaxes of many computer programming languages."');
		deny: (expressionParser isCompletedExpression:
			'a := #(1 2 3 4), (');
		deny: (expressionParser isCompletedExpression:
			'1 + ((2 - 3) * 4) / (5 + (6 - (7 * 8)) / 9))');
		deny: (expressionParser isCompletedExpression:
			's := ''Parentheses ('', ), '' contain material that serves to clarify, or is aside from the main point.''');
		deny: (expressionParser isCompletedExpression:
			's := ''Parentheses '', $(, ), '' contain material that serves to clarify, or is aside from the main point.''');
		deny: (expressionParser isCompletedExpression:
			'i := (0 "A Parenthesis like ( is included in the syntaxes of many computer programming languages."');
		deny: (expressionParser isCompletedExpression:
			'i := 0) "A Parenthesis like ) is included in the syntaxes of many computer programming languages."')