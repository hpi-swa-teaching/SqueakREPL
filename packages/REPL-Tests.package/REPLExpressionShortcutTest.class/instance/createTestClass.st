running
createTestClass
	"Create a class for testing."

	| classInstance |
	Object
		subclass: self class testClassName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self class testClassCategoryName.
	classInstance := Smalltalk at: self class testClassName asSymbol.
	classInstance
		compile:
			'testFunction
^1234'