system startup
startUp: resuming 
	"If image is newly started, check arguments if a REPL was requested. If so, provide an interface."

	(resuming and: [Smalltalk commandLine arguments includes: self REPLArgument]) ifTrue: [
		self interface: self interfaceClass new. 
		self interface open.
	]