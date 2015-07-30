handling
handleCommand: aCharacter 
	"Handle character as Telnet command."

	aCharacter = TelnetCharacter SB
		ifTrue: [
			self readMode: #subnegotiation.
			^ self].

	aCharacter = TelnetCharacter SE
		ifTrue: [
			self readMode: #regular.
			^ self].

	self readMode: #operation.