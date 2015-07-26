accessing
isReplRequested
	"Answer whether user requested REPL when starting image."
	^ Smalltalk commandLine arguments includes: self replArgument