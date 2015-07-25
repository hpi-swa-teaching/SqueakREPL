options
toArray: aString

	| commands commandValues |

	commands := aString findTokens: ' '.

	commandValues := commands collect: [ :command |

		command isAllDigits ifTrue: [
			command asInteger
		]; ifFalse: [
			REPLCoreCompiler new evaluate: ('REPLTelnet ', command)
		].
	].

	^ commandValues asCollection.