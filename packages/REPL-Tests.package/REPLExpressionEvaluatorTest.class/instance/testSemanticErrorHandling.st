testing
testSemanticErrorHandling
	"Test handling of a semantic error."

	| exception |

	self evaluator
		evaluate: 'anObject doSomething'
		onError: [ :ex | exception := ex lastError ].

	self
		assert: exception notNil
		description: 'An error was expected to be thrown.';

		assert: (exception isKindOf: MessageNotUnderstood)
		description: 'An error of the type MessageNotUnderstood was expected.';

		assert: (exception message selector = #doSomething)
		description: 'An error concering the selector doSomething was expected.';

		assert: (exception receiver isNil)
		description: 'The receiver was expected to be nil.'