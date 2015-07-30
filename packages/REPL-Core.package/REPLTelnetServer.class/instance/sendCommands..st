printing
sendCommands: aString
	"Send aString as commands to client."
	
	self send: (self class parse: aString) asByteArray