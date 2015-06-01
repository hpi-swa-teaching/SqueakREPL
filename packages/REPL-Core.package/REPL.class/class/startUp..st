system startup
startUp: resuming 
	"If image is newly started, check arguments if a REPL was requested. If so, provide one."

	(resuming and: [Smalltalk commandLine arguments includes: self REPLArgument]) ifTrue: [
		Instance := self interfaceClass new. 
	]