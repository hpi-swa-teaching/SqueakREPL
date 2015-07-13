system startup
startUp: resuming 
	"If image is newly started, check arguments if a REPL was requested. If so, provide an interface."

	(resuming and: [Smalltalk commandLine arguments includes: self replArgument]) ifTrue: [
		self interface: self interfaceClass new. 
		self isPortRequested ifTrue: [
			self interface port: self port ].
		self interface open.
	]