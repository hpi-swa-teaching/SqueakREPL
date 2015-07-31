interpreting
parse: aString
	"Parse aString as Telnet instructions and return commands."

	| commandTokens commandValues |
	commandTokens := aString findTokens: ' '.
	commandValues := commandTokens
		collect: [ :command | 
			command isAllDigits
				ifTrue: [ command asInteger ]
				ifFalse: [ 
					(command indexOf: $|) = 0
						ifTrue: [ REPLCoreCompiler new evaluate: 'REPLTelnetServer ' , command, ' asciiValue' ]
						ifFalse: [ 
							| bitMasks maskSum |
							bitMasks := command findTokens: '|'.
							maskSum := 0.
							bitMasks do: [ :eachMask | eachMask := maskSum + (REPLCoreCompiler new evaluate: 'REPLTelnetServer ' , eachMask, ' asciiValue') ].
							maskSum ] ] ].
	^ commandValues