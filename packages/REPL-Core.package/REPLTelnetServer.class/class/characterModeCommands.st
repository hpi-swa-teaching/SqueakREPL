interpreting
characterModeCommands
	"Answer command string to be sent to telnet client to turn off line buffering."

	^ (Smalltalk os platformName = 'Win32'
		ifTrue: [ 'IAC DO ECHO ' ]
		ifFalse: [ 'IAC DO LINEMODE ' ]),
	   'IAC WILL ECHO ',
         'IAC SB LINEMODE MODE 0 IAC SE '
