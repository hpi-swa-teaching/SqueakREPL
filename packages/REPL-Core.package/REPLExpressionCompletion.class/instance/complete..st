completing
complete: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString."

	(self isOrdinaryShortcut: aString)
		ifTrue: [ ^ self completeOrdinaryShortcut: aString ].
	(self isSpecialShortcut: aString)
		ifTrue: [ ^ self completeSpecialShortcut: aString ].
	^ self completeExpression: aString