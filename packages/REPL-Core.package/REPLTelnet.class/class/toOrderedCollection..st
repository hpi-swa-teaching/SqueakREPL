options
toOrderedCollection: aString 
	| commands commandValues |
	commands := aString findTokens: ' '.
	commandValues := commands
				collect: [:command | REPLCoreCompiler new evaluate: 'REPLTelnet ' , command].
	^ commandValues asCollection