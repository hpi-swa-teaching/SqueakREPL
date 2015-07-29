class initialization
initialize
	"Initialize main REPL class."

	Smalltalk addToStartUpList: REPLStartUp.
	Smalltalk addToShutDownList: REPLStartUp