living
startUp: aBoolean
	"Start the REPL up dependent on aBoolean."

	(aBoolean and: [ Smalltalk commandLine arguments includes: self replArgument ])
		ifTrue: [ 
			self interface: self new.
			self isPortRequested
				ifTrue: [ self interface port: self port ].
			self interface open ]