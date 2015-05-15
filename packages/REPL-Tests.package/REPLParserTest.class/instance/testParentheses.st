testing
testParentheses
	"Check whether parentheses are recognized appropriately."

	self
		assert: (self parser isCompletedExpression: '1 + ((2 - 3) * 4) / (5 + ((6 - (7 * 8)) / 9))');
		assert: (self parser isCompletedExpression: 's := ''Parentheses () contain material that serves to clarify, or is aside from the main point.''');
		assert: (self parser isCompletedExpression: 's := ''Parentheses '', $(, $), '' contain material that serves to clarify, or is aside from the main point.''');
		assert: (self parser isCompletedExpression: 'i := 0 "A Parenthesis like ( is included in the syntaxes of many computer programming languages."');
		assert: (self parser isCompletedExpression: 'i := 0 "A Parenthesis like ) is included in the syntaxes of many computer programming languages."');
		assert: (self parser isCompletedExpression: 'a := #(1 2 3 4)');
		deny: (self parser isCompletedExpression: '1 + ((2 - 3) * 4) / (5 + (6 - (7 * 8)) / 9))');
		deny: (self parser isCompletedExpression: 's := ''Parentheses ('', ), '' contain material that serves to clarify, or is aside from the main point.''');
		deny: (self parser isCompletedExpression: 's := ''Parentheses '', $(, ), '' contain material that serves to clarify, or is aside from the main point.''');
		deny: (self parser isCompletedExpression: 'i := (0 "A Parenthesis like ( is included in the syntaxes of many computer programming languages."');
		deny: (self parser isCompletedExpression: 'i := 0) "A Parenthesis like ) is included in the syntaxes of many computer programming languages."');
		should: [ (self parser isCompletedExpression: 'a := #(1 2 3 4') ] raise: Error
