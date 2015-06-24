repl
help: aContext

	(aContext server) print:  String crlf, 'Welcome to the Squeak REPL! ', String crlf,
		'The Squeak REPL gives you the ability to use the Squeak Environment in the comforts of your terminal. To enhance the experience, the Squeak REPL offers the following nifty shortcuts, which can be called with a `#` or a `!`', String crlf,
   '!info - Version info, Copyright info etc.', String crlf,
   '!help - Lists you all the shortcuts', String crlf,
   '!quit - Stops the Squeak REPL Session and closes the image', String crlf,
   '!close - Stops the Squeak REPL Session and leaves the image open', String crlf,
   '!vardump - Lists all the temporal variables you have declared', String crlf,
   '#cc: aContext o: anObject s: aSymbol c: aCategoryString - to be continued', String crlf.
