class
cc: aContext o: anObject s: aSymbol ivn: anInstanceVariableNamesString cvn: aClassVariableNamesString c: aCategoryString 
	"Create a new class which is derived from anObject (an instance of Object), named after aSymbol (an instance of Symbol) and whose instance variable names, class variable names and category are defined according to anInstanceVariableNamesString (an instance of String), aClassVariableNamesString (an instance of String) and aCategoryString (an instance of String) respectively."

	anObject
		subclass: aSymbol
		instanceVariableNames: anInstanceVariableNamesString
		classVariableNames: aClassVariableNamesString
		poolDictionaries: ''
		category: aCategoryString