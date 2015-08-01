debugging
releaseDebugger
	"Release the attached debugger instance."

	self clearDebugger.
	self endDebugging.
	self interface print: self interface class lineSymbol