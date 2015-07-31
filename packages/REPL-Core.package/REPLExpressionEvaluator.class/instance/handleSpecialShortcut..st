evaluation
handleSpecialShortcut: aString
	"Handle a special shortcut like !help and does not comply with default smalltalk syntax."

	| command value |
	command := aString allButFirst.

	(REPLExpressionShortcut canUnderstand: (command , ':') asSymbol)
		ifFalse: [ ^ (self context userInterface colorize: 'Unknown command: "' , command , '"' with: self context userInterface class colorBad) asString ].

	value := REPLExpressionShortcut new perform: (command , ':') asSymbol with: self context.

	^ (value isMemberOf: REPLExpressionShortcut)
		ifTrue: [ nil ]
		ifFalse: [ value ]