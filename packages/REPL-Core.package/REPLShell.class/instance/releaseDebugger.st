debugging
releaseDebugger
	"Release attached REPLDebugger."

	self clearDebugger.
	self endDebugging.
	self interface print: self interface class lineSymbol.
	