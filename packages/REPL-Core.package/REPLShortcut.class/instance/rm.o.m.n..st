method
rm: aContext o: aClass m: anOldString n: aNewString
	"Rename the method named after anOldString (an instance of String) within the class anObject (an instance of Object) according to aNewString (an instance of String)."

	| r |
	r := RBRenameMethodRefactoring
		renameMethod: anOldString
		in: aClass
		to: aNewString
		permutation: (1 to: aNewString asSymbol numArgs).
	r execute