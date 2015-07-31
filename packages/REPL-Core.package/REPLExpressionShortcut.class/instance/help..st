repl
help: aContext
	"Display helpful information to the user.

Usage:
!help"

	^ aContext userInterface openingMessage , 'The Squeak REPL gives you the ability to use the Squeak' , String crlf
		, 'Environment in the comforts of your terminal. To enhance' , String crlf
		, 'the experience, the Squeak REPL offers the following' , String crlf
		, 'nifty shortcuts, which can be called with a `#` or a `!`' , String crlf , String crlf
		, (aContext userInterface colorize: '!info' with: aContext userInterface class colorGood)
		, '     -    Version info, Copyright info etc.' , String crlf
		, (aContext userInterface colorize: '!shortcuts' with: aContext userInterface class colorGood)
		, '-    List of all available shortcuts.' , String crlf
		, (aContext userInterface colorize: '!help' with: aContext userInterface class colorGood) , '     -    Lists you all the shortcuts'
		, String crlf , (aContext userInterface colorize: '!quit' with: aContext userInterface class colorGood)
		, '     -    Stops the Squeak REPL Session and closes the image' , String crlf
		, (aContext userInterface colorize: '!close' with: aContext userInterface class colorGood)
		, '    -    Stops the Squeak REPL Session and leaves the image open' , String crlf
		, (aContext userInterface colorize: '!vardump' with: aContext userInterface class colorGood)
		, '  -    Lists all the temporal variables you have declared' , String crlf