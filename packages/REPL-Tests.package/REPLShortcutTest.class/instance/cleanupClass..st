running
cleanupClass: aSymbol

	(Smalltalk classNamed: aSymbol) notNil ifTrue: [ (Smalltalk classNamed: aSymbol) removeFromSystem ].