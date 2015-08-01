running
removeTestClass
	"Remove a class for testing."

	| classInstance |
	classInstance := Smalltalk at: self class testClassName asSymbol.
	classInstance removeFromSystem