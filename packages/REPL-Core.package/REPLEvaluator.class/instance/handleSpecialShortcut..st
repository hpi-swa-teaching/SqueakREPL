evaluation
handleSpecialShortcut: aString
	"Handle a special shortcut like !help and does not comply with default smalltalk syntax."

	| command value |
	command := aString copyFrom: 2 to: aString size.

	(REPLShortcut canUnderstand: (command , ':') asSymbol)
		ifFalse: [ ^ (self context interface colorize: 'Unknown command: "' , command , '"' with: self context interface class colorBad) asString ].

	value := REPLShortcut new perform: (command , ':') asSymbol with: self context.

	(value isMemberOf: REPLShortcut)
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ value ]