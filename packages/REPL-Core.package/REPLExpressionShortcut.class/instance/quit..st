repl
quit: aContext
	"Close the connection to the REPL and shut down the running image.

Usage:
!quit"

	[ Smalltalk snapshot: true andQuit: true ] fork