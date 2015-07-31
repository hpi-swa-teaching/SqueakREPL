class initialization
initialize
	"Initialize main REPL class."

	Smalltalk
		addToStartUpList: REPLStartUp;
		addToShutDownList: REPLStartUp