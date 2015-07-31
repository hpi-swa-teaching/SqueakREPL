messages
shortcutWarningMessage 
	^ 'Warning: Please note that you have one or more shortcuts in your method'
		, String crlf
		, 'declaration. Someone, who does not have the REPL package, may therefore not be able'
		, String crlf
		, 'to use it.'