printing
sendCommands: aString
	"Send aString as commands to client."
	
	self send: (REPLTelnetCharacter parse: aString) asByteArray