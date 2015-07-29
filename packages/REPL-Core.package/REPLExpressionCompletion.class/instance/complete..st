completing
complete: aString
	"Answer a collection of suggestions on how to complete the possibly incomplete expression aString."

	(self isOrdinaryExpressionShortcut: aString) ifTrue: [ ^ self completeOrdinaryShortcut: aString ].
	(self isSpecialExpressionShortcut: aString) ifTrue: [ ^ self completeSpecialShortcut: aString ].
	^ self completeExpression: aString