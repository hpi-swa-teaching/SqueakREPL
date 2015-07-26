accessing
port
	"Answer port if requested by user."

	| arguments index |
	arguments := Smalltalk commandLine arguments.
	index  := arguments indexOf: (self portArgument) ifAbsent: [ ^nil ].
	^ (arguments at: (index + 1)) asNumber 