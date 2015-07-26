evaluation
handleSpecialShortcut: aString 
	"Handles a special shortcut like !help"
	| command value |
	command := aString copyFrom: 2 to: aString size.
	(REPLShortcut canUnderstand: (command , ':') asSymbol)
		ifFalse: [^ (self context server colorize: 'Unknown command: "' , command , '"' with: self context server class colorBad) asString].
	value := REPLShortcut new perform: (command , ':') asSymbol with: self context.
	(value isMemberOf: REPLShortcut)
		ifTrue: [^ nil]
		ifFalse: [^ value]