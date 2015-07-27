repl
debuggers: aContext
	"List all available debugger instances and assign an identifying number.

Usage:
!debuggers"

	| result index debuggerInstances |
	debuggerInstances := Debugger allInstances.
	result := ''.
	index := 1.
	debuggerInstances
		do: [ :eachDebugger | 
			result := result , String crlf , ' ' , (aContext interface colorize: '(' , index , ') ' with: aContext interface class colorGood)
				, eachDebugger contextStackList first.
			index := index + 1 ].
	result := result , String crlf.
	^ result