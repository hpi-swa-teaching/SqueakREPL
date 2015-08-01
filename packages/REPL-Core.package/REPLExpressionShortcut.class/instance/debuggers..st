repl
debuggers: aContext
	"List all available debugger instances and assign an identifying number.

Usage:
!debuggers"

	| debuggerInstances interface |
	interface := aContext userInterface.
	debuggerInstances := Debugger allInstances.
	^ debuggerInstances
		inject: String empty
		into: [ :result :eachDebuggerInstance | 
			result , String crlf , ' '
				,
					(interface class
						colorize: '(' , (debuggerInstances indexOf: eachDebuggerInstance) , ') '
						with: interface class colorGood) , eachDebuggerInstance contextStackList first ]