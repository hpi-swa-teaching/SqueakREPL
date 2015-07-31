class initialization
newWith: aDebugger
	"Create a new instance of the receiver using aDebugger."

	^ self basicNew
		debugger: aDebugger;
		initialize;
		yourself
