initialize-release
open
	"Wait for connection on port."

	port 
		ifNil: [ self socket listenOn: self defaultPort ]
		ifNotNil: [ self socket listenOn: self port ].
	
	[ 
		[self socket isWaitingForConnection] whileTrue: [].
		self startLoop.
	] fork

	