testing
testVardumpEmpty
	"Test the vardump shortcut with no variables assigned."

	| result |
	result := self shortcuts vardump: self context.
	self assert: result = 'No local bindings found.' description: 'Expected no bindings to be found.'