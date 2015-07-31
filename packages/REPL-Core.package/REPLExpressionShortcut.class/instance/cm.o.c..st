method
cm: aContext o: anObject c: aString
	"Create a new method which is attached to anObject and whose source code is set according to aString."

	(aContext expressionParser makesUseOfShortcuts: aString)
		ifTrue: [ aContext userInterface
					print: String crlf	, self class shortcutWarningMessage, String crlf ].

	anObject compile: aString
