evaluation
handleException: anException
	"Handles anException and tries to resolve MessageNotUnderstood-exceptions in order to allow our shortcuts."

	| args message shortcuts value |

	"TODO: ! shortcuts"

	message := (anException receiver asString) , ':', (anException message selector asString).
	args := OrderedCollection new.
	args add: #context.
	args addAll: anException message arguments.

	shortcuts := REPLShortcuts new.
	value := shortcuts perform: message asSymbol withArguments: args asArray.

	anException resume: value.