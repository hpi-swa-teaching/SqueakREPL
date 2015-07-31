method
cm: aContext o: anObject c: aString
	"Create a new method which is attached to anObject (an instance of
	Object) and whose source code is set according to aString (an
	instance of String)."

	| parser |
	parser := REPLExpressionParser new.
	(parser makesUseOfShortcuts: aString)
		ifTrue: [ aContext userInterface
					print: String crlf	, self class shortcutWarningMessage, String crlf ].
	anObject compile: aString