repl
windows: aContext
	| result wins i |
	wins := World submorphs select: [ :m | m respondsTo: #label ].
	i := 1.
	result := ''.
	wins
		do: [ :m | 
			result := result , String crlf , ' ' , (aContext server colorize: '(' , i , ') ' with: aContext server class colorGood)
				, m label.
			i := i + 1 ].
	result := result , String crlf.
	^ result