initialize-release
open
	"Wait for connection on port."

	self socket listenOn: port.
	
	[ 
		[self socket isWaitingForConnection] whileTrue: [].
		self startLoop.
	] forkAt: (Processor userBackgroundPriority)

	