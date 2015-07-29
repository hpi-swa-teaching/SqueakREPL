accessing
isPortRequested
	"Answer whether user requested a port when starting image."

	^ Smalltalk commandLine arguments includes: self portArgument