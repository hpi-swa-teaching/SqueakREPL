evaluation
handleSpecialShortcut: aString
	"Handles a special shortcut like !help"

	| command value |
	command := aString copyFrom: 2 to: aString size.

	(REPLShortcut canUnderstand: (command, ':') asSymbol) ifFalse: [ ^ 'Unknown command "', command, '"' ].

	value := REPLShortcut new perform: (command, ':') asSymbol with: self context.

	(value isMemberOf: REPLShortcut)
		ifTrue: [ ^nil ]
		ifFalse: [ ^ value ].