running
assertStringNotEmpty: aString
	"Assert a string to not be empty."

	self
		assert: (aString isKindOf: String)
		description: 'The result was expected to be a string.';

		assert: aString notEmpty
		description: 'The result was expected to not be empty.'