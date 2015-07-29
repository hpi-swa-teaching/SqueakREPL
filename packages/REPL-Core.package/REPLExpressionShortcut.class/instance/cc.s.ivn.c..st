class
cc: aContext s: aSymbol ivn: anInstanceVariableNamesString c: aCategoryString
	"Create a new class which is named after aSymbol (an instance of
	Symbol) and whose instance variable names and category are
	defined according to anInstanceVariableNamesString (an instance of
	String) and aCategoryString (an instance of String) respectively."

	Object
		subclass: aSymbol
		instanceVariableNames: anInstanceVariableNamesString
		classVariableNames: ''
		poolDictionaries: ''
		category: aCategoryString