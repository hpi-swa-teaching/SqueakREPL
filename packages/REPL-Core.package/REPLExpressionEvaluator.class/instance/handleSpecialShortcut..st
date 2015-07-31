evaluation
handleSpecialShortcut: aString
	"Handle a special shortcut like !help and does not comply with default smalltalk syntax."

	| command value |
	command := aString allButFirst , ':'.

	(self class shortcutClass canUnderstand: command asSymbol)
		ifFalse: [ ^ (self context userInterface class colorize: 'Unknown command: "' , command allButLast , '"' with: self context userInterface class colorBad) asString ].

	value := self class shortcutClass new
				perform: command asSymbol
				with: self context.

	^ (value isMemberOf: self class shortcutClass)
		ifTrue: [ nil ]
		ifFalse: [ value ]