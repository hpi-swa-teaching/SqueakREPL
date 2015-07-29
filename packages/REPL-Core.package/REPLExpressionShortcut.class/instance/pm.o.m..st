method
pm: aContext o: aClassOrSymbol m: aSymbol
	"Print the code of the method aSymbol in the class given by aClassOrSymbol."

	| class |
	class := aClassOrSymbol isSymbol
		ifTrue: [ Smalltalk classNamed: aClassOrSymbol ]
		ifFalse: [ aClassOrSymbol ].

	^ (aClassOrSymbol sourceCodeAt: aSymbol) asString copyReplaceAll: String cr with: String crlf.