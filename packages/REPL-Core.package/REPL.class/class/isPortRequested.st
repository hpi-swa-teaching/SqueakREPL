accessing
isPortRequested
	"Answer whether user requested a port for REPL when starting image."
	^ Smalltalk commandLine arguments includes: self portArgument