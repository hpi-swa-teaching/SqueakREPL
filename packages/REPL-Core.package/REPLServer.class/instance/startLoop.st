initialize-release
startLoop
	"Start process handling read-eval-print-loop."

	self print: self openingMessage.
	self print: (#(255 16rFB 16r01) asByteArray).
	self print: (#(16rFF 16rFD 16r22) asByteArray).
	self print: String lf.
	self process: ([ [

		
		[ self socket waitForData ]
			on: ConnectionClosed
			do: [
				self socket closeAndDestroy.
				Transcript show: 'Fight Club is closed.'; cr.
			].
		self loop.

		] repeat ] forkAt: (Processor userBackgroundPriority)).