testing
testApostrophes
	"Check whether apostrophes are treated properly."

	self
		assert: (self parser isExpression: 'a := ''The apostrophe is a punctuation mark in languages that use the Latin alphabet.''.').
	self
		assert: (self parser isExpression: 'a := ''The ''''apostrophe'''' is a punctuation mark in languages that use the Latin alphabet.''.').
	self
		deny: (self parser isExpression: 'a := ''The apostrophe is a punctuation mark in languages that use the Latin alphabet.').
	self
		deny: (self parser isExpression: 'a := ''The apostrophe '' is a punctuation mark in languages that use the Latin alphabet.''.')