system startup
startUp: resuming
	"Provide REPL interface if requested."

	(resuming and: [ Smalltalk commandLine arguments includes: self replArgument ])
		ifTrue: [ 
			self interface: self new.
			self isPortRequested
				ifTrue: [ self interface port: self port ].
			self interface open ]