evaluation
handleException: anException
	"Handles anException and tries to resolve MessageNotUnderstood-exceptions in order to allow our shortcuts."

	| args message shortcuts value |

	anException message selector = #! ifTrue: [
		anException message setSelector: #n:
	].

	anException receiver isSymbol ifFalse: [^ anException signal.].

	message := (anException receiver asString) , ':', (anException message selector asString).
	args := OrderedCollection new.
	args add: #context.
	args addAll: anException message arguments.

	shortcuts := REPLShortcut new.
	[ value := shortcuts perform: message asSymbol withArguments: args asArray ]
		on: MessageNotUnderstood 
		do: [ ^anException signal ].

	anException resume: value.