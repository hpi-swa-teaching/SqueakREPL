running
assertNotNilOrEmpty: aString
	"Assert a string to not be nil or empty."

	self
		assert: aString notNil
		description: 'The result was expected to not be nil.';

		assert: aString notEmpty
		description: 'The result was expected to not be empty.'