evaluating
handleMessageNotUnderstood: anException
	"Handle anException and try to resolve
	MessageNotUnderstood-exceptions in order to allow special shortcuts."

	| arguments message value |
	(self isShortcutReceiver: anException)
		ifFalse: [ ^ anException signal ].
	message := (self buildShortcutMessage: anException) asSymbol.
	arguments := (self buildShortcutArguments: anException) asArray.
	(self class classOfExpressionShortcut canUnderstand: message)
		ifFalse: [ ^ anException signal ].
	value := [ self performShortcut: message with: arguments ]
		on: MessageNotUnderstood
		do: [ :ex | ^ ex signal ].
	anException resume: value