printing
sendCommands: aString
	"Send aString as commands to client."
	
	self send: (TelnetCharacter parse: aString) asByteArray