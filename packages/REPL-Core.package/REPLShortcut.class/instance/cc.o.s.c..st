class
cc: aContext o: anObject s: aSymbol c: aCategoryString 
	"Create a new class which is derived from anObject (an instance of
	Object), named after aSymbol (an instance of Symbol) and whose
	category is defined according to aCategoryString (an instance of
	String). "
	anObject
		subclass: aSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryString