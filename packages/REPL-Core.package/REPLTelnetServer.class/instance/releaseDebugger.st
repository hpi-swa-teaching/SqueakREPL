debugging
releaseDebugger
	"Release attached REPLDebugger."

	self clearDebugger.
	self endDebugging.
	self print: self class lineSymbol.
	