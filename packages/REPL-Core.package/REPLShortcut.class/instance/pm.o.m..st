method
pm: aContext o: aClassOrSymbol m: aSymbol
	| class |
	aClassOrSymbol isSymbol
		ifTrue: [ class := Smalltalk classNamed: aClassOrSymbol ]
		ifFalse: [ class := aClassOrSymbol ].
	^ (aClassOrSymbol sourceCodeAt: aSymbol) asString copyReplaceAll: String cr with: String crlf