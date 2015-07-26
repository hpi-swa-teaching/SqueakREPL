repl
debuggers: aContext 
	| result i debuggerInstances |
	debuggerInstances := Debugger allInstances.
	result := ''.
	i := 1.
	debuggerInstances
		do: [:m | 
			result := result , String crlf , ' '
						, (aContext server colorize: '(' , i , ') ' with: aContext server class colorGood) , m contextStackList first.
			i := i + 1].
	result := result , String crlf.
	^ result