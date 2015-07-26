repl
help: aContext 
	^ aContext server openingMessage , 'The Squeak REPL gives you the ability to use the Squeak' , String crlf , 'Environment in the comforts of your terminal. To enhance' , String crlf , 'the experience, the Squeak REPL offers the following' , String crlf , 'nifty shortcuts, which can be called with a `#` or a `!`' , String crlf , String crlf
		, (aContext server colorize: '!info' with: aContext server class colorGood) , '     -    Version info, Copyright info etc.' , String crlf
		, (aContext server colorize: '!help' with: aContext server class colorGood) , '     -    Lists you all the shortcuts' , String crlf
		, (aContext server colorize: '!quit' with: aContext server class colorGood) , '     -    Stops the Squeak REPL Session and closes the image' , String crlf
		, (aContext server colorize: '!close' with: aContext server class colorGood) , '    -    Stops the Squeak REPL Session and leaves the image open' , String crlf
		, (aContext server colorize: '!vardump' with: aContext server class colorGood) , '  -    Lists all the temporal variables you have declared' , String crlf , String crlf , '#cc: aContext o: anObject s: aSymbol c: aCategoryString - to be continued' , String crlf