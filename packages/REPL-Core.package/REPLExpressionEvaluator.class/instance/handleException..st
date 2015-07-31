evaluation
handleException: anException
	"Handle anException and try to resolve
	MessageNotUnderstood-exceptions in order to allow special shortcuts."

	| args message shortcuts value |
	(self isShortcutReceiver: anException)
		ifFalse: [ ^ anException signal ].

	anException message selector = self class characterOfSpecialExpressionShortcut asSymbol 
		ifTrue: [ anException message setSelector: self class defaultParameterName ].

	self context ifNil: [ self initializeContext].

	message := anException receiver asString , ':' , anException message selector asString.

	args := OrderedCollection new.
	args add: self context.
	args addAll: anException message arguments.

	shortcuts := self class shortcutClass new.
	[ value := shortcuts
				perform: message asSymbol
				withArguments: args asArray ]
		on: MessageNotUnderstood
		do: [ :e | ^ e signal ].

	(value isMemberOf: self class shortcutClass)
		ifTrue: [ value := nil ].

	anException resume: value