printing
sendCommands: aString
	"Send aString as collection of commands to client."
	
	self send: (self class parse: aString) asByteArray