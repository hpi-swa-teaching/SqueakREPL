evaluating
handleCommand: aCharacter 
	"Handle character as Telnet command."

	aCharacter = TelnetCharacter SB
		ifTrue: [
			self awaitSubnegotiation.
			^ self].

	aCharacter = TelnetCharacter SE
		ifTrue: [
			self finishSubnegotiation.
			self finishCommand.
			^ self].

	self awaitOperation.
	self finishCommand