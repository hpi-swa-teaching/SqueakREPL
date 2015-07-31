accessing
isReplRequested
	"Answer whether the user asked for the REPL in the course of starting the image."

	^ Smalltalk commandLine arguments includes: self replArgument