life cycle
open
	"Wait for connection on port."

	self socket listenOn: port.
	
	[
		"[ self socket isWaitingForConnection ] whileTrue: []."
		self socket waitForConnectionFor: 60.
		self startLoop.
	] forkAt: (Processor userBackgroundPriority).

	