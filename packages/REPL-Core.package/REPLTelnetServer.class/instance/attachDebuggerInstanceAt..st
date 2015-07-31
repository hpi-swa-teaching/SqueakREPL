debugging
attachDebuggerInstanceAt: anInteger
	"Attach REPLDebugger from Debbuger instance at anInteger."

	| debuggerInstance |
	debuggerInstance := Debugger allInstances at: anInteger.
	self debugger: (self class debuggerClass newWith: debuggerInstance).
	self debugger interface: self.
	self beginDebugging.