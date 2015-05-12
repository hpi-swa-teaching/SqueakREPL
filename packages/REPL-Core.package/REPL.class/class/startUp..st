system startup
startUp: resuming 
	"If image is newly started, check arguments if a REPL was requested.
	If so, provide one."
	"Check arguments"
	Transcript cr; show: 'Arguments: ';
		 show: Smalltalk commandLine arguments;
		 cr.
	(Smalltalk commandLine arguments includes: self REPLArgument) ifTrue: [
		Transcript show: 'A REPL was requested.'.
		ThisInstance := self new. ]