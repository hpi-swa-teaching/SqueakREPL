evaluation
handleSpecialShortcut: aString
	"Handles a special shortcut like !help"

	| command value |
	command := aString copyFrom: 2 to: aString size.

	(REPLShortcuts canUnderstand: (command, ':') asSymbol) ifFalse: [ ^ (self context server colorize: 'Unknown command: "', command, '"'   with: self context server class colorBad) asString ].

	value := REPLShortcuts new perform: (command, ':') asSymbol with: self context.

	(value isMemberOf: REPLShortcuts)
		ifTrue: [ ^nil ]
		ifFalse: [ ^ value ].