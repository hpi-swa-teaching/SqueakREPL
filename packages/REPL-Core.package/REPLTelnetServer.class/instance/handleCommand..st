handling
handleCommand: aCharacter 
	"Handle character as Telnet command."

	aCharacter = REPLTelnetCharacter SB
		ifTrue: [
			self readMode: #subCommand.
			^ self].

	self readMode: #operation.