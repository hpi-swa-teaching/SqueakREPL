testing
testVardumpNonEmpty
	"Test the vardump shortcut with variables assigned."

	| result |
	self context expressionEvaluator evaluate: 'a := 5'.

	result := self shortcuts vardump: self context.

	self
		assert: (result = 'No local bindings found.') not
		description: 'Expected bindings to be found.'