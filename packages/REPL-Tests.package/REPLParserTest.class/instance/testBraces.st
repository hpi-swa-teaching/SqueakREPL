testing
testBraces
	"Check whether braces are treated properly."

	self
		assert: (self parser isExpression: '}{.').
	self
		assert: (self parser isExpression: '{a . b . c . d}.').
	self
		assert: (self parser isExpression: '{a . b . {c . d}}.').
	self
		deny: (self parser isExpression: '{a . b . c . d .').
	self
		deny: (self parser isExpression: '{a . b . {c . d} .')