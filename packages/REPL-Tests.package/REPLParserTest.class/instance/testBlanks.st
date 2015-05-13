testing
testBlanks
	"Check whether any kind of whitespace is ignored properly."

	self
		assert: (self parser isExpression: '  1 + 1.').
	self
		assert: (self parser isExpression: '1 + 1.  ').
	self
		assert: (self parser isExpression: '  1 + 1.  ').
	self
		assert: (self parser isExpression: '1 ' , Character cr , '+ 1.').
	self
		assert: (self parser isExpression: '1 +' , Character lf , ' 1.').
	self
		assert: (self parser isExpression: '1 + 1.' , Character cr , Character lf)