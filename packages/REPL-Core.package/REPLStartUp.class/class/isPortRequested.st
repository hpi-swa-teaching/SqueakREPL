accessing
isPortRequested
	"Answer whether the user requested a specific port in the course of starting the image."

	^ Smalltalk commandLine arguments includes: self portArgument