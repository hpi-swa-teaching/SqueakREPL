class initialization
initialize
	"Initialize main REPL class."

	Smalltalk addToStartUpList: REPLStarter.
	Smalltalk addToShutDownList: REPLStarter