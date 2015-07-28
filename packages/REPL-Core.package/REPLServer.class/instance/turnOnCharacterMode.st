telnet
turnOnCharacterMode
	"Send telnet commands to client to turn off line buffering."

	Smalltalk os platformName = 'Win32'
		ifTrue: [ self sendCommands: 'IAC DO ECHO' ]
		ifFalse: [ self sendCommands: 'IAC DO LINEMODE' ].

	self
		sendCommands: 'IAC WILL ECHO';
		sendCommands: 'IAC SB LINEMODE MODE 0 IAC SE'.