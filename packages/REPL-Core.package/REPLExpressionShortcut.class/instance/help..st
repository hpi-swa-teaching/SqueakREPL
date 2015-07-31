repl
help: aContext
	"Display helpful information to the user.

Usage:
!help"

	^ aContext userInterface class openingMessage , String crlf, aContext userInterface class eraseLineUntilEnd, String crlf, 'The Squeak REPL gives you the ability to use the Squeak' , String crlf
		, 'Environment in the comforts of your terminal. To enhance' , String crlf
		, 'your experience the Squeak REPL offers following' , String crlf
		, 'nifty shortcuts. Call them using `#` or `!`.', String crlf , String crlf
		, (aContext userInterface class colorize: '!info' with: aContext userInterface class colorGood)
		, '      -   Version info, Copyright info etc.' , String crlf
		, (aContext userInterface class colorize: '!shortcuts' with: aContext userInterface class colorGood)
		, ' -   List of all available shortcuts.' , String crlf
		, (aContext userInterface class colorize: '!help' with: aContext userInterface class colorGood) , '      -   Lists you all the shortcuts'
		, String crlf , (aContext userInterface class colorize: '!quit' with: aContext userInterface class colorGood)
		, '      -   Stops the Squeak REPL Session and closes the image' , String crlf
		, (aContext userInterface class colorize: '!close' with: aContext userInterface class colorGood)
		, '     -   Stops the Squeak REPL Session and leaves the image open' , String crlf
		, (aContext userInterface class colorize: '!vardump' with: aContext userInterface class colorGood)
		, '   -   Lists all the temporal variables you have declared' , String crlf