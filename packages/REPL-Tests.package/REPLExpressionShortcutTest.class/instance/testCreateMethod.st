testing
testCreateMethod
	"Test the cm:o:c: shortcut."

	| classInstance instance |
	classInstance := Smalltalk at: self class testClassName asSymbol.

	self shortcuts
		cm: self context
		o: classInstance
		c: 'foo
^123'.

	instance := classInstance new.
	
	self
		assert: (instance foo = 123)
		description: 'Unexpected return value.'