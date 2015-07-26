completion
tryGetCommentFor: aSymbol 
	(REPLShortcut new respondsTo: aSymbol)
		ifTrue: [^ REPLShortcut precodeCommentOrInheritedCommentFor: aSymbol].
	^ nil