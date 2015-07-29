class
cc: aContext s: aSymbol ivn: anInstanceVariableNamesString cvn: aClassVariableNamesString pd: aPoolDictionariesString c: aCategoryString
	"Create a new class which is named after aSymbol (an instance of
	Symbol) and whose instance variable names, class variable names,
	pool dictionaries and category are defined according to
	anInstanceVariableNamesString (an instance of String),
	aClassVariableNamesString (an instance of String),
	aPoolDictionariesString (an instance of String) and aCategoryString
	(an instance of String) respectively."

	Object
		subclass: aSymbol
		instanceVariableNames: anInstanceVariableNamesString
		classVariableNames: aClassVariableNamesString
		poolDictionaries: aPoolDictionariesString
		category: aCategoryString