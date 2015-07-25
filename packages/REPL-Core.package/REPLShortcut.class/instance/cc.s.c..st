class
cc: aContext s: aSymbol c: aCategoryString
	"Create a new class which is named after aSymbol (an instance of Symbol) and whose category is defined according to aCategoryString (an instance of String)."

	Object
		subclass: aSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryString