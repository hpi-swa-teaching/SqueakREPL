as yet unclassified
tryGetCommentFor: aSymbol

	(REPLShortcuts new respondsTo: aSymbol)
		ifTrue: [ ^REPLShortcuts precodeCommentOrInheritedCommentFor: aSymbol ].

	^nil