handling
handleCommand: aCharacter 
	"Handle character as Telnet command."

	aCharacter = TelnetCharacter SB
		ifTrue: [
			"self awaitSubnegotiation."
			self readMode: #subnegotiation.
			^ self].

	aCharacter = TelnetCharacter SE
		ifTrue: [
			"self finishSubnegotiation.
			self finishCommand."
			self readMode: #regular.
			^ self].

	"self awaitOperation.
	self finishCommand"
	self readMode: #operation.