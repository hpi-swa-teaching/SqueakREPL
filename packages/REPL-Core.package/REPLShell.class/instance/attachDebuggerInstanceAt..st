debugging
attachDebuggerInstanceAt: anInteger
	"Attach a debugger instance using a Squeak Debbuger instance at anInteger."

	| debuggerInstance |
	debuggerInstance := Debugger allInstances at: anInteger.
	self debugger: (self class debuggerClass newWith: debuggerInstance).
	self debugger interface: self interface.
	self debugger accept: $_.
	self beginDebugging.