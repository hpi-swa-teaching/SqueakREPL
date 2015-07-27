repl
vardump: aContext
	"List all variables in the local context.

Usage:
!vardump"

	| bindings output |
	bindings := aContext evaluator workspace bindings.
	output := ''.
	bindings ifEmpty: [ ^ 'No local bindings found.' ].
	bindings keys
		do: [ :eachBinding | 
			| value paddedBindingName |
			value := aContext evaluator workspace bindings at: eachBinding.
			paddedBindingName := ((eachBinding asString padded: #right to: self class vardumpColumnWidth with: Character space)).
			output := output , String crlf, paddedBindingName, value asString ].
	^ output