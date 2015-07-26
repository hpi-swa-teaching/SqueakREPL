printing
sendCommands: aString 
	"Send aString as commands to client."
	self send: (REPLTelnet parse: aString) asByteArray