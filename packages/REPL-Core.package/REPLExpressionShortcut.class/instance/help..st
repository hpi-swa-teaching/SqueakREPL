repl
help: aContext
	"Display helpful information to the user.

Usage:
!help"

	| interfaceClass |
	interfaceClass := aContext userInterface class.

	^ interfaceClass openingMessage , String crlf
		, interfaceClass eraseLineUntilEnd, String crlf
		, 'The Squeak REPL gives you the ability to use the Squeak' , String crlf
		, 'Environment in the comforts of your terminal. To enhance' , String crlf
		, 'your experience the Squeak REPL offers following' , String crlf
		, 'nifty shortcuts. Call them using `#` or `!`.', String crlf , String crlf
		, (interfaceClass colorize: '!info' with: interfaceClass colorGood)
		, '      -   Version info, Copyright info etc.' , String crlf
		, (interfaceClass colorize: '!shortcuts' with: interfaceClass colorGood)
		, ' -   List of all available shortcuts.' , String crlf
		, (interfaceClass colorize: '!help' with: interfaceClass colorGood) , '      -   Lists you all the shortcuts'
		, String crlf , (interfaceClass colorize: '!quit' with: interfaceClass colorGood)
		, '      -   Stops the Squeak REPL Session and closes the image' , String crlf
		, (interfaceClass colorize: '!close' with: interfaceClass colorGood)
		, '     -   Stops the Squeak REPL Session and leaves the image open' , String crlf
		, (interfaceClass colorize: '!vardump' with: interfaceClass colorGood)
		, '   -   Lists all the temporal variables you have declared' , String crlf