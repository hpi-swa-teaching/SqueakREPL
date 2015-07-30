handling
handleSubCommand: aCharacter 
	"Handle character as Telnet sub command."

	aCharacter = self class SE
		ifTrue: [ self readMode: #regular ].