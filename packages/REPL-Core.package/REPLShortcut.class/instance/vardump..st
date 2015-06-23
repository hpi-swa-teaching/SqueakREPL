repl
vardump: aContext

	| bindings |
	bindings := aContext evaluator workspace bindings.

	bindings
		ifEmpty: [ aContext server print: String crlf, 'No local bindings found.' ]
		ifNotEmpty: [ 	bindings keys do: [ :eachBinding |  |value|
						value := (aContext evaluator workspace bindings) at: eachBinding.
						aContext server print: String crlf, (eachBinding, Character tab, value asString) ].].

