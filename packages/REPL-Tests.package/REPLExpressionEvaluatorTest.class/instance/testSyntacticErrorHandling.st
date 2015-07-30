testing
testSyntacticErrorHandling
	"Test handling of a syntactic error."

	| exception |

	self evaluator
		evaluate: '(anObject doSomething'
		onError: [ :ex | exception := ex lastError ].

	self
		assert: exception notNil
		description: 'An error was expected to be thrown.';

		assert: exception = 'Error: "right parenthesis expected ->" at position 22'
		description: 'An unexpected error was thrown:', String crlf, exception asString