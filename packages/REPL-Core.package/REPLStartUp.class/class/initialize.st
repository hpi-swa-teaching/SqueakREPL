initializing
initialize
	"Initialize the main class of the REPL."

	Smalltalk
		addToStartUpList: REPLStartUp;
		addToShutDownList: REPLStartUp