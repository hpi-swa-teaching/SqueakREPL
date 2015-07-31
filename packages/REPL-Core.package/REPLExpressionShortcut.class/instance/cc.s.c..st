class
cc: aContext s: aSymbol c: aCategoryString
	"Create a new class which is named after aSymbol and whose category is defined according to aCategoryString."

	Object
		subclass: aSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryString