evaluation
handleException: anException
	"Handles anException and tries to resolve
	MessageNotUnderstood-exceptions in order to allow our shortcuts."

	| args message shortcuts value |
	anException message selector = #!
		ifTrue: [ anException message setSelector: #n: ].
	anException receiver isSymbol
		ifFalse: [ ^ anException signal ].
		"Bitte von hier ..."
	self context
		ifNil: [ 
			self context: REPLContext new.
			self context evaluator: self ].
		"... bis hier herausnehmen und für die Tests einmal REPLContext newFor:on:with in der startUp Methode einrichten. Das ist dann deutlich sauberer."
	message := anException receiver asString , ':' , anException message selector asString.
	args := OrderedCollection new.
	args add: self context.
	args addAll: anException message arguments.
	shortcuts := REPLShortcut new.
	[ value := shortcuts perform: message asSymbol withArguments: args asArray ]
		on: MessageNotUnderstood
		do: [ :e | ^ e signal ].
	(value isMemberOf: REPLShortcut)
		ifTrue: [ value := nil ].
	anException resume: value