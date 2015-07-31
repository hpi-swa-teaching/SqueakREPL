evaluation
evaluateSpecialShortcut: aString
	"Handle a special shortcut like !help and does not comply with default smalltalk syntax."

	| command value interfaceClass |
	interfaceClass := self context userInterface class.
	command := aString allButFirst , ':'.

	(self class classOfExpressionShortcut canUnderstand: command asSymbol)
		ifFalse: [ ^ (interfaceClass
						colorize: 'Unknown command: "' , command allButLast , '"'
						with: interfaceClass colorBad) asString ].

	value := self class classOfExpressionShortcut new
				perform: command asSymbol
				with: self context.

	^ (value isMemberOf: self class classOfExpressionShortcut)
		ifTrue: [ nil ]
		ifFalse: [ value ]