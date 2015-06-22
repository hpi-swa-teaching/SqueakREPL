initialize-release
startLoop
	"Start process handling read-eval-print-loop."

	self send: self openingMessage.
	"self print: (REPLTelnet).
	self print: (#(16rFF 16rFD 16r22) asByteArray)."
	"self print: String lf."

	(Smalltalk os platformName = 'Win32')
		ifTrue: [ self sendCommands: 'IAC DO ECHO' ]
		ifFalse: [ self sendCommands: 'IAC DO LINEMODE' ].

	self
		sendCommands: 'IAC WILL ECHO';
		"sendCommands: 'IAC SB LINEMODE MODE MODEEDIT|MODETRAPSIG IAC SE';"
		sendCommands: 'IAC SB LINEMODE MODE 0 IAC SE'.

	self process: ([ [

		
		[ self socket waitForData ]
			on: ConnectionClosed
			do: [
				self socket closeAndDestroy.
				Transcript show: 'Fight Club is closed.'; cr.
			].
		self loop.

		] repeat ] forkAt: (Processor userBackgroundPriority)).