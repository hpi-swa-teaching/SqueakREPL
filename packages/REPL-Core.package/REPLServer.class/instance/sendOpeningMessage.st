life cycle
sendOpeningMessage
	"self print: (REPLTelnet).
	self print: (#(16rFF 16rFD 16r22) asByteArray)."
	"self print: String lf."
	Smalltalk os platformName = 'Win32'
		ifTrue: [self sendCommands: 'IAC DO ECHO']
		ifFalse: [self sendCommands: 'IAC DO LINEMODE'].
	self sendCommands: 'IAC WILL ECHO';
		 sendCommands: 'IAC SB LINEMODE MODE 0 IAC SE'.
	"sendCommands: 'IAC SB LINEMODE MODE MODEEDIT|MODETRAPSIG
	IAC SE';"
	self send: self openingMessage.
	self send: self lineSymbol.
	self clearInput