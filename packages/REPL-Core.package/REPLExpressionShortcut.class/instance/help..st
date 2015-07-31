repl
help: aContext
	"Display helpful information to the user.

Usage:
!help"

	^ aContext userInterface openingMessage , 'The Squeak REPL gives you the ability to use the Squeak' , String crlf
		, 'Environment in the comforts of your terminal. To enhance' , String crlf
		, 'the experience, the Squeak REPL offers the following' , String crlf
		, 'nifty shortcuts, which can be called with a `#` or a `!`' , String crlf , String crlf
		, (aContext interface colorize: '!info' with: aContext interface class colorGood)
		, '     -    Version info, Copyright info etc.' , String crlf
		, (aContext interface colorize: '!shortcuts' with: aContext interface class colorGood)
		, '-    List of all available shortcuts.' , String crlf
		, (aContext interface colorize: '!help' with: aContext interface class colorGood) , '     -    Lists you all the shortcuts'
		, String crlf , (aContext interface colorize: '!quit' with: aContext interface class colorGood)
		, '     -    Stops the Squeak REPL Session and closes the image' , String crlf
		, (aContext interface colorize: '!close' with: aContext interface class colorGood)
		, '    -    Stops the Squeak REPL Session and leaves the image open' , String crlf
		, (aContext interface colorize: '!vardump' with: aContext interface class colorGood)
		, '  -    Lists all the temporal variables you have declared' , String crlf