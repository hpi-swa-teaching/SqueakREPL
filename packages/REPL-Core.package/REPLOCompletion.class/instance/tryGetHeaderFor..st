completion
tryGetHeaderFor: aSymbol

	(REPLShortcut new respondsTo: aSymbol)
		ifTrue: [ ^REPLShortcut methodHeaderFor: aSymbol ].

	^nil