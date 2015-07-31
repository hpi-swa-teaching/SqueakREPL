debugging
attachDebuggerInstanceAt: anInteger
	"Attach REPLDebugger using Debbuger instance at anInteger."

	| debuggerInstance |
	debuggerInstance := Debugger allInstances at: anInteger.
	self debugger: (self class debuggerClass newWith: debuggerInstance).
	self debugger interface: self interface.
	self debugger accept: $_.
	self beginDebugging.