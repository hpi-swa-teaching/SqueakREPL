evaluation
handleException: anException
	"Handle anException and try to resolve
	MessageNotUnderstood-exceptions in order to allow special shortcuts."

	| arguments message shortcuts value |

	(self isShortcutReceiver: anException)
		ifFalse: [ ^ anException signal ].

	message := (self buildShortcutMessage: anException) asSymbol.
	arguments := (self buildShortcutArguments: anException) asArray.

	(self class classOfExpressionShortcut canUnderstand: message)
		ifFalse: [ ^ anException signal ].

	shortcuts := self class classOfExpressionShortcut new.
	[ value := shortcuts
				perform: message
				withArguments: arguments ]

		on: MessageNotUnderstood
		do: [ :ex | ^ ex signal ].

	(value isMemberOf: self class classOfExpressionShortcut)
		ifTrue: [ value := nil ].

	anException resume: value