completion
tryGetHeaderFor: aSymbol

	(REPLShortcuts new respondsTo: aSymbol)
		ifTrue: [ ^REPLShortcuts methodHeaderFor: aSymbol ].

	^nil