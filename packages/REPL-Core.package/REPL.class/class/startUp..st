system startup
startUp: resuming 
	"If image is newly started, check arguments if a REPL was requested. If so, provide one."

	(Smalltalk commandLine arguments includes: self REPLArgument) ifTrue: [
		ThisInstance := self interfaceClass new. ]