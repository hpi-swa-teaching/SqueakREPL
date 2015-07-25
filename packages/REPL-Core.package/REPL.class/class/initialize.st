class initialization
initialize
	"Initialize main REPL class."
	
	Smalltalk addToStartUpList: REPL.
	Smalltalk addToShutDownList: REPL.