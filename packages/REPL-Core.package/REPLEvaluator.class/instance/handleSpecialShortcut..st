evaluation
handleSpecialShortcut: aString
	"Handles a special shortcut like !help"

	| command value |
	command := aString copyFrom: 2 to: aString size.

	(REPLShortcuts canUnderstand: (command, ':') asSymbol) ifFalse: [ ^ 'Unknown command "', command, '"' ].

	value := REPLShortcuts new perform: (command, ':') asSymbol with: self context.

	(value isMemberOf: REPLShortcuts)
		ifTrue: [ ^nil ]
		ifFalse: [ ^ value ].