handling
handleCommand: aCharacter
	"Handle character as Telnet command."

	aCharacter = self class SB
		ifTrue: [ self readMode: #subCommand ]
		ifFalse: [ self readMode: #operation ]