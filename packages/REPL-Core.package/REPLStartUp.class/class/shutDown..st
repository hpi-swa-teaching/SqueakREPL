living
shutDown: aBoolean
	"Shut the REPL down dependent on aBoolean."

	(aBoolean and: [ self hasInterface ])
		ifTrue: [ 
			self interface close.
			self interface: nil ]