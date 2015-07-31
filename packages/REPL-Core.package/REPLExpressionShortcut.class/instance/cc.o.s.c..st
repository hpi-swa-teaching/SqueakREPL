class
cc: aContext o: anObject s: aSymbol c: aCategoryString
	"Create a new class which is derived from anObject, named after aSymbol and whose category is defined according to aCategoryString."

	anObject
		subclass: aSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryString