repl
vardump: aContext

	aContext server print: String crlf.

	aContext evaluator workspace bindings keys do: [ :eachBinding |  |value|
		value := (aContext evaluator workspace bindings) at: eachBinding.
		aContext server print: (eachBinding, Character tab, value asString, String crlf) ].