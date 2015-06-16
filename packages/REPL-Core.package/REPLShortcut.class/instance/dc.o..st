class
dc: aContext o: anObject
	"Delete the class anObject (an instance of Object)."

	anObject isSymbol
		ifTrue: [ (Smalltalk classNamed: anObject) removeFromSystem ]
		ifFalse: [ anObject removeFromSystem ].