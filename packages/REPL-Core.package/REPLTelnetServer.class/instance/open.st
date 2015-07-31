life cycle
open
	"Wait for connection on port."

	self socket listenOn: self port.
	[ 
	self socket waitForConnectionFor: 60.
	self
		sendCommands: self class characterModeCommands;
	    print: self class openingMessage;
	startLoop ] forkAt: Processor userBackgroundPriority