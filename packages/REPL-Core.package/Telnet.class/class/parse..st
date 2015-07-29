options
parse: aString
	| commands commandValues |
	commands := aString findTokens: ' '.
	commandValues := commands
		collect: [ :command | 
			command isAllDigits
				ifTrue: [ command asInteger ]
				ifFalse: [ 
					(command indexOf: $|) = 0
						ifTrue: [ REPLCoreCompiler new evaluate: 'REPLTelnet ' , command ]
						ifFalse: [ 
							| masks sum |
							masks := command findTokens: '|'.
							sum := 0.
							masks do: [ :mask | sum := sum + (REPLCoreCompiler new evaluate: 'REPLTelnet ' , mask) ].
							sum ] ] ].
	^ commandValues