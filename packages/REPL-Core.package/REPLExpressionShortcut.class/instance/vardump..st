repl
vardump: aContext
	"List all variables in the local context.

Usage:
!vardump"

	| bindings |
	bindings := aContext expressionEvaluator workspace bindings.
	bindings ifEmpty: [ ^ 'No local bindings found.' ].
	^ bindings keys
		inject: String empty
		into: [ :result :eachBinding | | value paddedBindingName |
			value := aContext expressionEvaluator workspace bindings at: eachBinding.
			paddedBindingName := ((eachBinding asString padded: #right to: self class vardumpColumnWidth with: Character space)).
			result , String crlf, ' ', paddedBindingName , value asString ]