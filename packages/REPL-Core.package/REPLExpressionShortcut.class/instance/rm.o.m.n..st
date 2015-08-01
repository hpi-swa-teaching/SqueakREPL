method
rm: aContext o: aClass m: anOldString n: aNewString
	"Rename the method named after anOldString within the class anObject according to aNewString."

	RBRenameMethodRefactoring
		renameMethod: anOldString
			in: aClass
			to: aNewString
			permutation: (1 to: aNewString asSymbol numArgs);
		execute