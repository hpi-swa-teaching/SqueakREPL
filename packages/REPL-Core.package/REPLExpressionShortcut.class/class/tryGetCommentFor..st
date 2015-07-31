shortcuts
tryGetCommentFor: aSymbol
	"Try to get a comment for the method specified by aSymbol."

	| comment |

	(self canUnderstand: aSymbol)
		ifFalse: [ ^ String empty ].

	comment := self precodeCommentOrInheritedCommentFor: aSymbol.
	^ comment
		ifNil: [ String empty ]
		ifNotNil: [ comment ]