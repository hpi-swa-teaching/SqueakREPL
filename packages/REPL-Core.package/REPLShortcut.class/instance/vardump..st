repl
vardump: aContext
	| bindings output |
	bindings := aContext evaluator workspace bindings.
	output := ''.
	bindings
		ifEmpty: [ output := output , 'No local bindings found.' ]
		ifNotEmpty: [ 
			bindings keys
				do: [ :eachBinding | 
					| value |
					value := aContext evaluator workspace bindings at: eachBinding.
					output := output , String crlf
						, ((eachBinding asString padded: #right to: 30 with: Character space) , value asString) ] ].
	^ output