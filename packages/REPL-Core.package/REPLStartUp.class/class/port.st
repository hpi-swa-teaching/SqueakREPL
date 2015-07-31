accessing
port
	"Answer the port potentially requested by the user."

	| arguments index |
	arguments := Smalltalk commandLine arguments.
	index := arguments indexOf: self portArgument.
	^ (arguments at: index + 1) asNumber