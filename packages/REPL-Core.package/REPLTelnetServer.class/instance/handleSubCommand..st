handling
handleSubCommand: aCharacter 
	"Handle character as Telnet sub command."

	aCharacter = REPLTelnetCharacter SE
		ifTrue: [ self readMode: #regular ].