method
lookup: aContext c: aClassOrSymbol m: aSymbol
	"Look up a method specified by aSymbol in the class aClassOrSymbol header and comment string."

	| class header comment |
	class := aClassOrSymbol isSymbol
		ifTrue: [ Smalltalk classNamed: aClassOrSymbol ]
		ifFalse: [ aClassOrSymbol ].

	header := class methodHeaderFor: aSymbol.
	comment := class precodeCommentOrInheritedCommentFor: aSymbol.

	comment := comment
		ifNil: [ 'No comment specified.' ]
		ifNotNil: [ comment asString copyReplaceAll: String cr with: String crlf ].

	^header, String crlf, (aContext userInterface class colorize: comment with: aContext userInterface class colorGood)
