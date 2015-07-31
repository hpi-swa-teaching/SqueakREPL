shortcuts
tryGetCommentFor: aSymbol
	"Try to get a comment for the method specified by aSymbol."

	(self new respondsTo: aSymbol)
		ifTrue: [ ^ self precodeCommentOrInheritedCommentFor: aSymbol ].
	^ nil